element([Head | Tail], 0, Head).
element([Head | Tail], Index, Value) :- element(Tail, LowerIndex, Value), Index is LowerIndex + 1.
