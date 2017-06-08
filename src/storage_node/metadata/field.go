package metadata

import "fmt"

func SetFieldTreeState(field *Field, state ProvisionState) {
	if field.ProvisionState != Active {
		field.ProvisionState = state
	}
	if field.SubFields != nil {
		for _, subField := range field.SubFields {
			SetFieldTreeState(subField, state)
		}
	}
}

// TODO: rename CollectionField
type Field struct {
	ID int64 `json:"_id,omitempty"`
	// TODO: remove? Need a method to link them
	CollectionID  int64      `json:"-"`
	ParentFieldID int64      `json:"-"`
	Name          string     `json:"name"`
	FieldTypeID   int64      `json:"field_type_id"`
	FieldType     *FieldType `json:"-"`
	// Arguments (limits etc.) for a given DatamanType (varies per field)
	TypeArgs map[string]interface{} `json:"type_args,omitempty"`

	// Various configuration options
	NotNull bool `json:"not_null,omitempty"` // Should we allow NULL fields

	// Optional subfields
	SubFields map[string]*Field `json:"subfields,omitempty"`

	// Optional relation
	Relation *FieldRelation `json:"relation,omitempty"`

	ProvisionState ProvisionState `json:"provision_state"`
}

func (f *Field) Equal(o *Field) bool {
	// TODO: better?
	return f.Name == o.Name && f.FieldTypeID == o.FieldTypeID && f.NotNull == o.NotNull && f.ParentFieldID == o.ParentFieldID
}

func (f *Field) Validate(val interface{}) error {
	_, err := f.Normalize(val)
	return err
}

// Validate a field
func (f *Field) Normalize(val interface{}) (interface{}, error) {
	// Normalize `val` based on DatamanFieldType
	normalizedVal, err := f.FieldType.DatamanFieldType.Name.Normalize(val)
	if err != nil {
		return nil, err
	}
	// Check constraints
	if f.FieldType.Constraints != nil {
		for _, fieldTypeConstraint := range f.FieldType.Constraints {
			if !fieldTypeConstraint.ConstraintFunc(normalizedVal) {
				return normalizedVal, fmt.Errorf("Failed constraint %d", fieldTypeConstraint.ConstraintID)
			}
		}
	}
	// check subfields (if exist)
	if f.SubFields != nil {
		mapVal, ok := normalizedVal.(map[string]interface{})
		if !ok {
			return normalizedVal, fmt.Errorf("Subfields defined on a non-map value")
		}
		for k, subField := range f.SubFields {
			if v, ok := mapVal[k]; ok {
				if err := subField.Validate(v); err != nil {
					return nil, err
				}
			} else {
				if subField.NotNull {
					return nil, fmt.Errorf("Missing required subfield %s", k)
				}
			}
		}
	}
	return normalizedVal, nil
}

type FieldRelation struct {
	ID      int64 `json:"_id,omitempty"`
	FieldID int64 `json:"field_id,omitempty"`

	Collection string `json:"collection"`
	Field      string `json:"field"`

	// TODO: update and delete
	//CascadeDelete bool `json:"cascade_on_delete"`
}
