//: [Previous](@previous) | [Table of Content](Introduction) | [Next](@next)
/*:
 # Single Linked List

 Single linked List is also one of the easiest data structures. Unlike an array, data in a single linked list is **not** stored continuously but sparsely. Here is a scenario that may help you to understand:
 
 - Imagine that you are going to collect gems in a treasury finding game:
 
    1. All you have at first is a package, including a starting gem along with a starting clue indicating *where you can find the next gem*.
 
    2. You follow the clue and find the next package, inlcuding the next gem along with the next clue indicating the location of the third gem.
 
    3. This process continues until you discover the last gem.
 
    In other words, all you need to find all gems is the first package!
 
 - When it comes to the scenario of using a single linked list:
 
    1. A package corresponds to a *node* in a single linked list.
 
    2. A gem corresponds to a *value* in a node.
 
    3. A clue corresponds to the *next* pointer in a node. A pointer is a special variable containing the location information of a node.
 
 To represent a single linked list, all you need is its *head* node, which corresponds to the first package under the game scenario. To iterate through the whole single linked list, you maintain a *current* pointer and redirect it to its *next* node.
 
 The efficiency of searching specific value in a single linked list depends on its location. Since you can only iterate the whole single linked list from head, you must check *until you reach the last node*. This may take a long time if the wanted value stays at the very back of the single linked list.
 
 The effeciency of insertion and removal are relatively fast. Since data is not stored in order in a single linked list, you don't need to rearrange all elements after the insertion position. Instead, you do the following things:
 
 1. Get to the position with the *current* pointer.
 
 2. Create a new node containing the new value.
 
 3. Set the *next* pointer of the new node to the *next* pointer of *current* pointer.
 
 4. Finally reset the *next* pointer of *current* to the new node.
 
 The same thing happens when it comes to removal.
 
 Comparing to `Array`, manipulating the first element of a single linked list is much faster. If you want to manipulate the last element of a single linked list, you can add a *tail* node the represent the last element.

 - Experiment:
 Run this playground page and interact with the live view to see how `Single Linked List` works. Graphics are better than words!
 */

import SwiftUI
import PlaygroundSupport
PlaygroundPage.current.liveView = UIHostingController(rootView: LinkedListView())

/*:
 - Note:
 Originally, single linked list cannot revert back. **To reset current to head, please manually rerun this page**.
 */

/*:
 Good job! You have just mastered `Single Linked List`! Actually, all other data structures can be implemented with `Array` and `Linked List`. That means you have the tool to build other data structure from scratch.
 
 Next, we are going to see two kinds of data structures that frequently appear in our daily life - `Stack` and `Queue`. But first, let's focus on `Stack` and see how it works.
*/

//: [Previous](@previous) | [Table of Content](Introduction) | [Next](@next)
