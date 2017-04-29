/*
append/3 takes 3 parameters, the first being the first list to concatenate and the second being
the second list to concatenate. The result is the third parameter
*/

new_append([],AB,AB).
new_append([A | T0], B, [A | T1]) :- new_append(T0,B,T1).

/*
Example query:

example_query :-
    new_append([1, 2, 3], [a, b, c], L),
    writeln(L).
Output:
[1,2,3,a,b,c]
*/
