/*
inside/3 attempts to bind the variable in the third argument to every number between the range of
the number given in the first parameter and the second parameter.
*/

inside(Min, Max, Min) :- Min =< Max.
inside(Min, Max, X) :- Between is Min + 1, Min < Max, inside(Between, Max, X).

/*

Example:

example_query :-
    findall(X, inside(1, 3, X), List),
    writeln(List).
Output:
[1,2,3]
    
*/
