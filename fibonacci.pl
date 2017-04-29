/*
fib/2 is a predicate that takes the first parameter as the nth fibonacci
sequence and the 2nd parameter as the solution.
*/

fib(N, [0, 1 | Tail]) :- fibrel(N, [0, 1 | Tail]).

fibrel(2,[X,Y]).
fibrel(N, [Front, Next, Sum | Tail]) :-
      NewN is N - 1,
      Sum is Next + Front,
      fibrel(NewN, [Next, Sum | Tail]).
      
/*
Example query:

example_query :- fib(6, X),
               writeln(X).
Output:
[0,1,1,2,3,5]
*/
      
      
