package metadata

var InternalFieldPrefix = "_"

var InternalFields map[string]*Field

func init() {
	tmpFields := []*Field{
		&Field{
			Name: "_id",
			FieldType: &FieldType{
				Name: "_id",
				DatamanFieldType: &DatamanFieldType{
					Name: Int,
				},
			},
			NotNull: true,
		},

		// TODO: add
		/*
			&Field{
				Name: "_created",
				Type: DateTime,
				NotNull: true,
			},

			&Field{
				Name: "_updated",
				Type: DateTime,
				NotNull: true,
			},
		*/

	}
	InternalFields = make(map[string]*Field)
	for _, field := range tmpFields {
		InternalFields[field.Name] = field
	}
}
