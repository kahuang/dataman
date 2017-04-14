// The goal here is to make a script which can connect to a storage node and
// pull out the current schemas as defined and spit them back to the user
// in dataman format.
//
// For now this will simply be something that knows how to interact with just postgres
// but once we do a split of interfaces in the storage node we should be able to use
// any storage node to do so
package main

import (
	"encoding/json"
	"fmt"
	"io/ioutil"

	yaml "gopkg.in/yaml.v2"

	"github.com/Sirupsen/logrus"
	"github.com/jacksontj/dataman/src/storage_node"
	"github.com/jacksontj/dataman/src/storage_node/metadata"
	flags "github.com/jessevdk/go-flags"
)

var opts struct {
	Databases []string `long:"databases"`
}

func main() {
	parser := flags.NewParser(&opts, flags.Default)
	if _, err := parser.Parse(); err != nil {
		logrus.Fatalf("Error parsing flags: %v", err)
	}

	meta := metadata.NewMeta()

	// TODO: actually have these come through CLI args or something
	config := &storagenode.Config{}
	configBytes, err := ioutil.ReadFile("../storage_node/storagenode/config.yaml")
	if err != nil {
		logrus.Fatalf("unable to find config: %v", err)
	}
	err = yaml.Unmarshal([]byte(configBytes), &config)
	if err != nil {
		logrus.Fatalf("invalid config: %v", err)
	}
	node, err := storagenode.NewStorageNode(config)
	if err != nil {
		logrus.Fatalf("error loading storage node: %v", err)
	}

	storeSchema, ok := node.Store.(storagenode.StorageSchemaInterface)
	if !ok {
		logrus.Fatalf("Not a schema interface?")
	}

	for _, databasename := range opts.Databases {
		meta.Databases[databasename] = storeSchema.GetDatabase(databasename)
	}

	bytes, _ := json.Marshal(meta)
	fmt.Println(string(bytes))

}