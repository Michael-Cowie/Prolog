fib(N, [0, 1 | Tail]) :- fibrel(N, [0, 1 | Tail]).

fibrel(2,[X,Y]).
fibrel(N, [Front, Next, Sum | Tail]) :-
      NewN is N - 1,
      Sum is Next + Front,
      fibrel(NewN, [Next, Sum | Tail]).
      
      
      
