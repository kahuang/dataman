package storagenode

import (
	"github.com/jacksontj/dataman/src/metadata"
	"github.com/jacksontj/dataman/src/query"
)

// Handle all of the meta objects for schemaman which would be backed by some storageinterface 
// initialized with an internal-only metastorageinterface (one that doesn't allow changes, and only does GetMeta())
type StorageMeta interface {
    Init(store StorageInterface) error
	GetMeta() *metadata.Meta
}

type MutableStorageMeta interface {
	RefreshMeta() error

	AddDatabase(db *metadata.Database) error
	RemoveDatabase(dbname string) error

	AddCollection(dbname string, collection *metadata.Collection) error
	UpdateCollection(dbname string, collection *metadata.Collection) error
	RemoveCollection(dbname string, collectionname string) error

	// TODO: move index and schema into a separate interface, since they are only
	// required for document stores (the rest are for all-- including k/v stores)
	AddIndex(dbname, collectionname string, index *metadata.CollectionIndex) error
	RemoveIndex(dbname, collectionname, indexname string) error

	// TODO: change this to a cache of the router schema?
	AddSchema(schema *metadata.Schema) error
	GetSchema(name string, version int64) *metadata.Schema
	ListSchemas() []*metadata.Schema
	RemoveSchema(name string, version int64) error
}

type StorageSchemaInterface interface {
	// Schema-Functions
	AddDatabase(db *metadata.Database) error
	RemoveDatabase(dbname string) error

	AddCollection(dbname string, collection *metadata.Collection) error
	UpdateCollection(dbname string, collection *metadata.Collection) error
	RemoveCollection(dbname string, collectionname string) error

	// TODO: move index and schema into a separate interface, since they are only
	// required for document stores (the rest are for all-- including k/v stores)
	AddIndex(dbname, collectionname string, index *metadata.CollectionIndex) error
	RemoveIndex(dbname, collectionname, indexname string) error
}

// Interface that a storage node must implement
type StorageInterface interface {
	// Initialization, this is the "config_json" for the `storage_node`
	Init(StorageMeta, map[string]interface{}) error

	// Data-Functions
	// TODO: split out the various functions into grouped interfaces that make sense
	// for now we'll just have one, but eventually we could support "TransactionalStorageNode" etc.
	// TODO: more specific types for each method
	Get(query.QueryArgs) *query.Result
	// TODO: pull up into the actual storage node itself, the implementation here
	// is simply switching between Update/Insert
	Set(query.QueryArgs) *query.Result
	Insert(query.QueryArgs) *query.Result
	Update(query.QueryArgs) *query.Result
	Delete(query.QueryArgs) *query.Result
	Filter(query.QueryArgs) *query.Result
}
