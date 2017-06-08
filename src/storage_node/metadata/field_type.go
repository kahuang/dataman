package metadata

type FieldType struct {
	ID   int64  `json:"_id"`
	Name string `json:"name"`
	// TODO: replace with the object version (instead of just the string
	DatamanFieldTypeID int64             `json:"dataman_field_type_id"`
	DatamanFieldType   *DatamanFieldType `json:"-"`

	// TODO: constraint
	Constraints []*FieldTypeConstraint `json:"constraints,omitempty"`
	// TODO: datasource_field_type + args
}

type FieldTypeConstraint struct {
	ID             int64          `json:"_id"`
	ConstraintID   int64          `json:"constraint_id"`
	Constraint     *Constraint    `json:"-"`
	ConstraintFunc ConstraintFunc `json:"-"`
	// TODO: encapsulate the arg ids in here somehow (string -> struct probably)
	// map of constraint_arg_id -> value
	Args map[int64]interface{} `json:"args"`
}
