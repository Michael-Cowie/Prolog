/*
Predicate element(?List, ?Index, ?Value) succeeds if Value is at position Index of List. 
*/

element([Head | Tail], 0, Head).
element([Head | Tail], Index, Value) :- element(Tail, LowerIndex, Value), Index is LowerIndex + 1.

/* Example Queries

test_answer :-
    element([a, b, c, d, e, f], 2, X),
    writeln(X).
output: C

test_answer :-
    element([a, b, c, d], I, d),
    writeln(I).
    
output: 3
*/
