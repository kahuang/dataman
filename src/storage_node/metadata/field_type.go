package metadata

import (
	"fmt"
	"strings"
)

/*

	Since field_types need to be used regardless of application, we are going to
	have a "FieldTypeRegistry" which is a central place to store all the field_types
	This will allow other us to inject all the other types (custom types) into the same subsystem


*/

// TODO: encapsulate in a struct (for locking etc.)
var FieldTypeRegistry map[string]*FieldType

func init() {
	initFieldTypeRegistry()
}

func initFieldTypeRegistry() {
	if FieldTypeRegistry != nil {
		return
	}
	FieldTypeRegistry = map[string]*FieldType{}

	for _, fieldType := range listInternalFieldTypes() {
		FieldTypeRegistry[fieldType.Name] = fieldType
	}
}

func AddFieldType(f *FieldType) error {
	if strings.HasPrefix(f.Name, InternalFieldPrefix) {
		return fmt.Errorf("Reserved namespace!")
	}
	if _, ok := FieldTypeRegistry[f.Name]; ok {
		return fmt.Errorf("Field type of that name already exists")
	}
	FieldTypeRegistry[f.Name] = f
	return nil
}

type FieldType struct {
	Name        string                `json:"name"`
	DatamanType DatamanType           `json:"dataman_type"`
	Constraints []*ConstraintInstance `json:"constraints,omitempty"`
}

// Validate and normalize
func (f *FieldType) Normalize(val interface{}) (interface{}, error) {
	normalizedVal, err := f.DatamanType.Normalize(val)
	if err != nil {
		return normalizedVal, err
	}

	if f.Constraints != nil {
		for i, constraint := range f.Constraints {
			if !constraint.Func(normalizedVal) {
				return normalizedVal, fmt.Errorf("Failed constraint %d: %v", i, constraint)
			}
		}
	}

	return normalizedVal, nil
}

func (f *FieldType) Equal(o *FieldType) bool {
	// TODO: also compare constraints
	return f.Name == o.Name && f.DatamanType == o.DatamanType
}
