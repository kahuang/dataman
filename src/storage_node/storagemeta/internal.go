package storagemeta

// This meta store only returns the metadata structure used internally to store the metadata
// itself in some dataman store
type InternalMeta struct {}


func (m *InternalMeta) Init(storagenode.StorageInterface) error {return nil}

func (m *InternalMeta) GetMeta() *metadata.Meta {
    schema := `
    {
        "name": "dataman_storagenode",
	    "collections": {
		    "collection": {
			    "name": "collection",
			    "fields": [
			        {
				        "name": "id",
				        "type": "int"
				    },
				    {
				        "name": "name",
				        "type": "string"
				    },
				    {
				        "name": "database_id",
				        "type": "int"
				    }
			    ],
			    "indexes": {
                    "collection_name": {
	                    "name": "collection_name",
	                    "fields": [
		                    "id",
		                    "name"
	                    ]
                    }
			    }
		    }
	    }
    }
    `
    var db metadata.Database
    err := json.Unmarshal([]byte(schema), &db)
    if err != nil {
        fmt.Printf("err %v\n", err)
        return nil
    }

    meta := metadata.NewMeta()
    meta.Databases[db.Name] = db
    return meta
}

