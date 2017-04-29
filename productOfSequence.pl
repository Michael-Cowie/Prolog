/*
The predicate product/2 takes the first parameter as a list containing a sequence of numbers
and the second parameter as the solution.
*/

product([], 1).
product([X | Tail], Product) :- product(Tail, RecProduct), Product is RecProduct * X.

/*
Example query:

example_query :- product([-1, 5, 1, 3], X),
               writeln(X).          
Output:
-15
*/
