import SwiftUI

struct LinkedListItem: Identifiable {
    var id = UUID()
    var index: Int
    var val: Int
}

class LinkNode {
    var val: Int
    var next: LinkNode?
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

public struct LinkedListView: View {
    
    public init() { }

    @State var linkedListArrayRepresentation: [LinkedListItem] = [
        LinkedListItem(index: 0, val: 0)
    ]
    
    var numberOfElements: Int {
        return linkedListArrayRepresentation.count
    }
    
    @State var currentIndex: Int = 0
    
    @State var insertHeadValue = ""
    @State var insertTailValue = ""
    
    @State var hasError = false
    @State var errorInformation = ""

    public var body: some View {
        VStack {
            Text("Linked List")
                .font(.custom("Marker Felt", size: 35))
                .fontWeight(.semibold)
                .foregroundColor(.green)
            HStack(alignment: .top) {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .leading) {
                        ForEach(linkedListArrayRepresentation) { item in
                            HStack {
                                if item.index == 0 {
                                    if item.index == self.numberOfElements - 1 {
                                        LinkedNodeView(content: item.val, flag: "ht")
                                    } else {
                                        LinkedNodeView(content: item.val, flag: "h")
                                    }
                                } else if item.index == self.numberOfElements - 1 {
                                    if item.index == 0 {
                                        LinkedNodeView(content: item.val, flag: "ht")
                                    } else {
                                        LinkedNodeView(content: item.val, flag: "t")
                                    }
                                } else {
                                    LinkedNodeView(content: item.val, flag: "m")
                                }
                                
                                if item.index == self.currentIndex {
                                    HStack {
                                        Image(systemName: "arrow.left")
                                        Text("current")
                                    }
                                }
                            }
                        }
                    }
                }
                Spacer()
                VStack(alignment: .leading) {
                    Button(action: {
                        // move current to its next
                        self.hasError = false
                        if self.currentIndex < self.numberOfElements - 1 {
                            self.currentIndex += 1
                        }
                    }) {
                        Text("Next")
                    }
                    HStack {
                        Button(action: {
                            // insert action
                            self.insertionAtHead()
                        }) {
                            Text("Insert")
                        }
                        TextField("value", text: $insertHeadValue, onCommit: { self.insertionAtHead() })
                        Text("at head")
                    }
                    HStack {
                        Button(action: {
                            // remove action
                            guard self.numberOfElements >= 1 else {
                                return
                            }
                            self.hasError = false
                            for i in 0 ..< self.numberOfElements {
                                self.linkedListArrayRepresentation[i].index -= 1
                            }
                            if self.currentIndex > 0 {
                                self.currentIndex -= 1
                            }
                            self.linkedListArrayRepresentation.removeFirst()
                        }) {
                            Text("Remove")
                        }
                        Text("at head")
                    }
                    if hasError {
                        Text(errorInformation).foregroundColor(.red)
                    }
                }
            }.padding()
            Spacer()
        }
    }
    
    func insertionAtHead() {
        guard let newValue = Int(self.insertHeadValue) else {
            self.hasError = true
            self.errorInformation = "Invalid Insert Value!"
            return
        }
        self.hasError = false
        let newNode = LinkedListItem(index: 0, val: newValue)
        for i in 0 ..< self.numberOfElements {
            self.linkedListArrayRepresentation[i].index += 1
        }
        if self.currentIndex > 0 {
            self.currentIndex += 1
        }
        self.linkedListArrayRepresentation.insert(newNode, at: 0)
    }
}
