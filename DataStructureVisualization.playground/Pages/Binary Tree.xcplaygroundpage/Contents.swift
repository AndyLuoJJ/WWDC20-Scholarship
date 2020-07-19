//: [Previous](@previous) | [Table of Content](Introduction) | [Next](@next)
/*:
 # Binary Tree

 Previously, we discuss that `Single Linked List` has a *next* pointer in each *node* to represent the location of next *node* (See in [this page](Single%20Linked%20List)). Imagine that a node can maintain two *next* pointers at most, which expands a `Single Linked List` into a `Binary Tree`. In a binary tree, the nodes pointed by *next* pointers are call **child nodes** or **children** of current node. Each node can have 0, 1 or 2 child nodes. Graphically child nodes are called *left child* and *right child*. The node at top is called **the root node**.
 
 Logically, a binary tree is quite the same as real trees in real life - they both have leaves and branches. That's why we call this data structure a "tree".
 
 The most common action to a binary tree is **iteration**, meaning that you need to meet all nodes in the tree. Based on the sequence of accessing child nodes, there are three kinds of iterations:
 
 1. current node -> left child -> right child: `Pre-Order Iteration`, since current node is accessed at first.
 
 2. left child -> current node -> right child: `In-Order Iteration`, since current node is accessed at middle.
 
 3. left child -> right child -> current node: `Post-Order Iteration`, since current node is accessed at last.
 
 Notice that left child is always accessed before right child.

 - Experiment:
 Run this playground page and interact with the live view to see how `Binary Tree` works. Graphics are better than words!
*/

import SwiftUI
import PlaygroundSupport
PlaygroundPage.current.liveView = UIHostingController(rootView: BinaryTreeView())

/*:
 - Note:
 If this page keeps running and the live view does not show, please give your machine some time to process.
 */

/*:
 As you can imagine, if the node of a single linked list can contain more than two *next* pointers, the `Binary Tree` will expand to a `General Purpose Tree`, which shares the majority of features as a `Binary Tree`.
 
 Congratulations! Now you have a brief knowledge of basic data structures, which will help you understand advanced data structures and algorithms much easier.
*/

//: [Previous](@previous) | [Table of Content](Introduction) | [Next](@next)
