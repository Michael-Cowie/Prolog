/*
doesNotContainX/3 succeeds if the list given in the third parameter matches the list given in the second
parameter if all instances of X given as the first parameter is removed.
*/

doesNotContainX(X, [], []).
doesNotContainX(X, [X | Tail], ListOut ) :- doesNotContainX(X, Tail, ListOut).
doesNotContainX(X, [Y | Tail1], [Y | Tail2]) :- X \= Y, doesNotContainX(X, Tail1, Tail2).

/*
Example query.
example_query :-
    doesNotContainX(a, [a, b, a, c, d, a, b], L),
    writeln(L).
Output.
[b,c,d,b]
*/
