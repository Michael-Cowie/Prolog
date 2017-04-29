/*
preorder/2 is a predicate that gives the postorder traversal of a given tree.
It takes two parameters, the tree and the traversal of the given tree.
Each tree is written as tree(root, left_subtree, right_subtree)
Each leaf node is written as leaf(X)

preorder traversal is current node -> left branch -> right branch
*/

preorder(leaf(X), [X]).

preorder(tree(Root, Left, Right), [Root |Traversal]) :-
    preorder(Left, LeftTraversal),
    preorder(Right, RightTraversal),
    append(LeftTraversal, RightTraversal, Traversal).
    
/*
Example query:
A Diagram of the given tree example
              A
            /   \
           B     E
         /  \
       C      D
example_query :- preorder(tree(a, tree(b, leaf(c), leaf(d)), leaf(e)), T), 
               writeln(T).
Output:
[a,b,c,d,e]
*/
