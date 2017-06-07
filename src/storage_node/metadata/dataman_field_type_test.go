package metadata

import "testing"

// TODO: add negative cases
var validValues map[DatamanFieldType][]interface{}

func init() {
	validValues = map[DatamanFieldType][]interface{}{
		Document: []interface{}{
			map[string]interface{}{"a": 1, "b": "c"},
		},
		String: []interface{}{
			"a",
			"asdl;fkja;sldfj",
			`asd;fljasd;flkj`,
		},
		Int: []interface{}{
			1,
			100,
			float64(123),
			"1234",
		},
		Bool: []interface{}{
			true,
			false,
		},
		// TODO:
		//DateTime: []interface{}{
		//
		//},
	}
}

func TestDatamanFieldTypeNormalization(t *testing.T) {
	for datamanFieldType, valueList := range validValues {
		t.Run(string(datamanFieldType), func(t *testing.T) {
			for i, val := range valueList {
				if _, err := datamanFieldType.Normalize(val); err != nil {
					t.Fatalf("%d datamanFieldType=%v val=%v err=%s", i, datamanFieldType, val, err)
				}
			}
		})
	}
}
