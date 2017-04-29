/*
swap_ends/2 takes two lists in the given parameters and succeeds if List1 is identical to List2, but
except the last elements are exchanged
*/

swap_ends([A, B | []], [B, A | []]).
swap_ends([H, X | T], [H1, X | T1]) :- swap_ends([H | T], [H1 | T1]).

/*
example_query :-
    swap_ends([a, b, c, d, e, f], L),
    writeln(L).
Output:
[f,b,c,d,e,a]
*/
