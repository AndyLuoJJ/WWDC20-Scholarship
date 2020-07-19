//: [Previous](@previous) | [Table of Content](Introduction) | [Next](@next)
/*:
 # Array
 
 Array is one of the easiest data structures. Dealing with an array is like working with a spreadsheet - each blank is occupied by a value. Data is **conitinuously** stored in an array, which means that data is stored **in order**. The order of elements of an array is called the *index* of that element. When using an array, **note that the start index of an array is 0 rather than 1**. This is a bit different from the scenario in our daily life.
 
 The efficiency of inquiry in an array is fast, since elements are stored in order inside an array. You just specify the index, and you can get the element of that index.
 
 The efficiency of insertion and removal depends on the location. For one thing, if you insert a new value at the **front** of an array, all elements **after** that index need to move backwards. For another thing, if you remove a value at the **front** of an array, all elements **before** that index need to move forwards. Hence, the *worst* case is that you manipulate the first element of an array, either insertion or removal. On the contrary, inserting and removing at the end of an array are both the fastest, since all other elements don't need to be rearranged.
 
 - Experiment:
 Run this playground page and interact with the live view to see how `Array` works. Graphics are better than words!
 */

import SwiftUI
import PlaygroundSupport
PlaygroundPage.current.liveView = UIHostingController(rootView: ArrayView())

/*:
 Great! You have just mastered `Array`!
 
 Next, we are going to see a non-continuous stored data structure - `Single Linked List`.
 */

//: [Previous](@previous) | [Table of Content](Introduction) | [Next](@next)
