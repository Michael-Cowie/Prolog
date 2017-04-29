/*
split_odd_even/3
First parameter: The Input list
Second parameter: Odd index of the list given in the first parameter
Third parameter: Even index of the list given in the first parameter
*/

split_odd_even([], [], []).
split_odd_even([X | [] ], [X | A], B) :- split_odd_even(Tail, A , B).
split_odd_even([X, Y | Tail], [X | A], [Y | B]) :- split_odd_even(Tail, A, B).

/*

Example:

example_query :-
    split_odd_even([a,b,c,d,e,f,g], A, B),
    write(A),
    writeln(B).
    
Output:
[a,c,e,g]
[b,d,f]

*/
