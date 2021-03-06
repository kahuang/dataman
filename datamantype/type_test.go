package datamantype

import (
	"testing"
	"time"
)

// TODO: add negative cases
var validValues map[DatamanType][]interface{}

func init() {
	validValues = map[DatamanType][]interface{}{
		Document: {
			map[string]interface{}{"a": 1, "b": "c"},
		},
		String: {
			"a",
			"asdl;fkja;sldfj",
			`asd;fljasd;flkj`,
			1,
			int64(1),
		},
		Int: {
			1,
			100,
			float64(123),
			"1234",
		},
		Float: {
			1,
			100,
			float64(123),
			"1234",
			1.0,
			"1.0",
		},
		Bool: {
			true,
			false,
		},
		// TODO:
		DateTime: {
			"2017-09-08 14:44:02.622944",
			"2017-09-08 14:44:02",
			"2017-01-17T23:58:48+00:00",
			1504906926.612214,
			1504906926,
			time.Now(),
			nil,
		},
	}
}

func TestDatamanTypeNormalization(t *testing.T) {
	for DatamanType, valueList := range validValues {
		t.Run(string(DatamanType), func(t *testing.T) {
			for i, val := range valueList {
				if _, err := DatamanType.Normalize(val); err != nil {
					t.Fatalf("%d DatamanType=%v val=%v err=%s", i, DatamanType, val, err)
				}
			}
		})
	}
}
