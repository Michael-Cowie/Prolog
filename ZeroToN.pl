/*
The predicate count/2 takes two arguments, the first being a number N and the 
second argument being a list of all numbers from 0 to N.
*/

count(N, [0 | Tail]) :- countrel(N, [ 0 | Tail]).

countrel(N, [X , Y | Tail]) :- Y is X + 1, Y =< N, countrel(N, [Y | Tail]).
countrel(N, [N | []]).

/*
Example query:

example_query :-
    count(5, X),
    writeln(X).
    
Output:
[0,1,2,3,4,5]

*/
