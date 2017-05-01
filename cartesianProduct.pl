/*
cartesian_product/3 takes three arguments.
1) A given list
2) A given list
3) The cartesian product of the two given lists
*/

cartesian_product([],_,[]).
cartesian_product([A | T0], B, Result) :- 
    pairAll(A, B, Result1),
    cartesian_product(T0, B, Result2),
    append(Result1, Result2, Result).

pairAll(A, [], []).
pairAll(A, [B | Tail], [(A, B) | Result]) :- pairAll(A, Tail, Result).

/*
Example query:

example_query :- cartesian_product([a, b, c], [1, 2], X),
               writeln(X).
Output:               
[(a,1), (a,2), (b,1), (b,2), (c,1), (c,2)]
*/
