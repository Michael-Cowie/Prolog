/*
The predicate countOccruence/2 Takes in a list as the first argument, and the in occurence of
each letter in the second argument formatted by [(Letter, Occurence),...]
*/

countOccurence([],[]).

countOccurence([], [(_,0)]).

countOccurence([X | T1], [(X, Count) | T2]) :- countOccurence(T1, [(X, CountRec) | T2]), Count is CountRec + 1.

countOccurence([X | T1], [(Y, 0) | T2]) :- countOccurence([X | T1], T2).

/*
Example:

example_query :- countOccurence([a, a, b, c, c, c], X),
               writeln(X).
Output:
[ (a,2), (b,1), (c,3)]

Note:
[a,b,c,a] outputs [ (a,1), (b,1), (c,1), (a,1)]
note [ (a,2), (b,1), (c,1)] as generally expected

*/
