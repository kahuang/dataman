package metadata

import "fmt"

// TODO: splitinto many new files

// TO NOTE:
// (1) constraint, (2) dataman_field_type, and (3) datasource_field_type are all code-defined types
// meaning they are keyed off of "name" not based on the ID in the code (since they are enumerated types).
// The IDs are purely for mapping in the datasource

// TODO: move down?
type ConstraintArg struct {
	Name             string `json:"name"`
	DatamanFieldType DatamanFieldType
	Value            interface{} `json:"value"`
}

// TODO: rename to ConstraintFunc / ConstraintName and use "Constraint" as the wrapper struct (for json mapping)
type Constraint string

const (
	LessThan Constraint = "<"
)

// Return "valid, error"
// TODO: the goal here is to (1) throw type errors on this method (not during run of the function)
func (c Constraint) GetEnforceFunc(args map[string]ConstraintArg) (func(v interface{}) bool, error) {
	// TODO: need to know dataman type for v and for "value" arg (so we can compare them)
	switch c {
	case LessThan:
		val, ok := args["value"]
		if !ok {
			return nil, fmt.Errorf(`LessThan missing required arg "value"`)
		}
		// TODO: Normalize "val" into a dataman type (or set of them)
		// TODO: take v and normalize to the same underlying type?
		switch valTyped := val.Value.(type) {
		case int:
			return func(v interface{}) bool {
				//return v < valTyped
				return true
			}, nil
		default:
			return nil, fmt.Errorf("Unsupported value type %v", valTyped)
		}

	}
	// TODO: switch based on name
	// TODO: make Name an enumerated type
	return nil, fmt.Errorf("Unknown contraint type %s", c)
}

type ConstraintInstance struct {
	ConstraintID int64                    `json:"constraint_id"`
	Constraint   Constraint               `json:"-"`
	Args         map[string]ConstraintArg `json:"args,omitempty"`
}

type DatasourceFieldType struct {
	ID   int64  `json:"_id"`
	Name string `json:"name"`
}

type DatasourceFieldTypeInstance struct {
	DatasourceFieldTypeID int64                `json:"datasource_field_type_id"`
	DatasourceFieldType   *DatasourceFieldType `json:"-"`
}

type FieldType struct {
	Name                 string                         `json:"name"`
	DatamanFieldTypeID   int64                          `json:"dataman_field_type_id"`
	DatamanFieldType     *DatamanFieldType              `json:"-"`
	Constraints          []*ConstraintInstance          `json:"constraint"`
	DatasourceFieldTypes []*DatasourceFieldTypeInstance `json:"datasource_field_type"`
}
