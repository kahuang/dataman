package metadata

// TODO: splitinto many new files

// TO NOTE:
// (1) constraint, (2) dataman_field_type, and (3) datasource_field_type are all code-defined types
// meaning they are keyed off of "name" not based on the ID in the code (since they are enumerated types).
// The IDs are purely for mapping in the datasource

type DatasourceFieldType struct {
	ID   int64  `json:"_id"`
	Name string `json:"name"`
}

type DatasourceFieldTypeInstance struct {
	DatasourceFieldTypeID int64                `json:"datasource_field_type_id"`
	DatasourceFieldType   *DatasourceFieldType `json:"-"`
}
