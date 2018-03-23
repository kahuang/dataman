package query

// TODO: move to a "record" package

type RecordItem struct {
	Record map[string]interface{}
	Source int
}

func NewRecordHeap(splitSortKeys [][]string, reverseList []bool) *RecordHeap {
	return &RecordHeap{
		Heap:          make([]RecordItem, 0),
		splitSortKeys: splitSortKeys,
		reverseList:   reverseList,
	}
}

type RecordHeap struct {
	Heap          []RecordItem
	splitSortKeys [][]string
	reverseList   []bool
}

func (r RecordHeap) Len() int { return len(r.Heap) }

func (r RecordHeap) Less(i, j int) (l bool) {
	var reverse bool
	defer func() {
		if reverse {
			l = !l
		}
	}()
	for sortKeyIdx, keyParts := range r.splitSortKeys {
		reverse = r.reverseList[sortKeyIdx]
		// TODO: record could (and should) point at the CollectionFields which will tell us types
		iVal, _ := GetValue(r.Heap[i].Record, keyParts)
		jVal, _ := GetValue(r.Heap[j].Record, keyParts)
		switch iValTyped := iVal.(type) {
		case string:
			jValTyped := jVal.(string)
			if iValTyped != jValTyped {
				l = iValTyped < jValTyped
				return
			}
		case int:
			jValTyped := jVal.(int)
			if iValTyped != jValTyped {
				l = iValTyped < jValTyped
				return
			}
		case int64:
			jValTyped := jVal.(int64)
			if iValTyped != jValTyped {
				l = iValTyped < jValTyped
				return
			}
		case float64:
			jValTyped := jVal.(float64)
			if iValTyped != jValTyped {
				l = iValTyped < jValTyped
				return
			}
		case bool:
			jValTyped := jVal.(bool)
			if iValTyped != jValTyped {
				l = !iValTyped && jValTyped
				return
			}
		// TODO: return error? At this point if all return false, I'm not sure what happens
		default:
			panic("Unknown type")
			l = false
			return

		}
	}
	l = false
	return
}

func (r RecordHeap) Swap(i, j int) { r.Heap[i], r.Heap[j] = r.Heap[j], r.Heap[i] }

func (r *RecordHeap) Push(x interface{}) {
	r.Heap = append(r.Heap, x.(RecordItem))
}

func (r *RecordHeap) Pop() interface{} {
	old := r.Heap
	n := len(old)
	x := old[n-1]
	r.Heap = old[0 : n-1]
	return x
}