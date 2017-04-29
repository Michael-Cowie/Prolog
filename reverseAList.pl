/*
reversed/2 Takes two parameters. The first being the list, and the second being the reversed list given in the first parameter.
My implementation involves using an accululator and a helper function
*/

reversed(Forward, Reversed) :- recReversed(Forward, [], Reversed).
recReversed([] ,Reversed, Reversed).
recReversed([X | Tail], Acc, Reversed) :- recReversed(Tail, [X | Acc], Reversed).

/*
Example query.

example_query :- 
    reversed([1, 2, 3, 4, 5], L),
    writeln(L).
Output:
[5,4,3,2,1]
*/
