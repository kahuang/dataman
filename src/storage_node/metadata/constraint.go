package metadata

import "fmt"

type ConstraintFunc func(interface{}) bool

type Constraint struct {
	ID   int64                    `json:"_id"`
	Name ConstraintName           `json:"name"`
	Args map[string]ConstraintArg `json:"args"`
}

func (c *Constraint) GetConstraintFunc(args map[int64]interface{}) (ConstraintFunc, error) {
	// First we have to normalize our args against the constraint args
	normalizedArgs := make(map[string]interface{})

	for k, constraintArg := range c.Args {
		givenValue, ok := args[constraintArg.ID]
		if !ok {
			return nil, fmt.Errorf("Missing arg %s", k)
		}
		normalizedVal, err := constraintArg.DatamanFieldType.Name.Normalize(givenValue)
		if err != nil {
			return nil, err
		}
		normalizedArgs[k] = normalizedVal
	}

	// Now that args are normalized, lets get the constraint function
	return c.Name.GetConstraintFunc(normalizedArgs)
}

type ConstraintName string

const (
	LessThan ConstraintName = "<"
)

// Return "valid, error"
// TODO: the goal here is to (1) throw type errors on this method (not during run of the function)
func (c ConstraintName) GetConstraintFunc(args map[string]interface{}) (func(v interface{}) bool, error) {
	// TODO: need to know dataman type for v and for "value" arg (so we can compare them)
	switch c {
	case LessThan:
		val, ok := args["value"]
		if !ok {
			return nil, fmt.Errorf(`LessThan missing required arg "value"`)
		}
		// TODO: Normalize "val" into a dataman type (or set of them)
		// TODO: take v and normalize to the same underlying type?
		switch valTyped := val.(type) {
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

//This is what defines what args a constraint takes
type ConstraintArg struct {
	ID                 int64             `json:"_id"`
	Name               string            `json:"name"`
	DatamanFieldTypeID int64             `json:"dataman_field_type_id"`
	DatamanFieldType   *DatamanFieldType `json:"-"`
}
