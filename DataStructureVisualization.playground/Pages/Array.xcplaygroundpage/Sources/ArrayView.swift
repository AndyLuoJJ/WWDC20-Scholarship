import SwiftUI

struct MyItem: Identifiable {
    var id = UUID()
    var val: Int
}

public struct ArrayView: View {
    // array content
    @State private var array: [MyItem] = [
        MyItem(val: 0)
    ]
    
    // insert and remove value and index
    @State private var insertIndex = ""
    @State private var insertValue = ""
    @State private var removeIndex = ""
    @State private var inquireIndex = ""
    @State private var inquireValue: Int?
    
    // Exception information
    @State private var isIndexValid = true
    @State private var exceptionInfo = ""
    
    public init() { }
    
    public var body: some View {
        VStack {
            // title text
            Text("Array")
                .font(.custom("Marker Felt", size: 35))
                .fontWeight(.semibold)
                .foregroundColor(.green)
            
            // Scroll View to show elements
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(array) { item in
                        BlockView(content: item.val)
                            .frame(width: 40, height: 40)
                    }
                }
            }.animation(.easeInOut).padding()
            
            // insert value
            HStack {
                Text("Insert:")
                TextField("value", text: $insertValue, onCommit: { self.insertion() })
                Text("at:")
                TextField("position", text: $insertIndex, onCommit: { self.insertion() })
                Spacer()
                Button(action: { self.insertion() }) {
                    Text("Insert")
                }
            }.padding()
            
            // remove value
            HStack {
                Text("Remove at:")
                TextField("index", text: $removeIndex, onCommit: { self.removal() })
                Spacer()
                Button(action: { self.removal() }) {
                    Text("Remove")
                }
            }.padding()
            
            // inquire value
            HStack {
                Text("Value at index")
                TextField("index", text: $inquireIndex, onCommit: { self.inquiry() }).frame(width: 60)
                if inquireValue != nil {
                    Text("is     \(inquireValue!)")
                } else {
                    Text("is")
                }
                Spacer(minLength: 30)
                Button(action: { self.inquiry() }) {
                    Text("Inquire")
                }
            }.padding()
            
            // exception info
            if !isIndexValid {
                Text(exceptionInfo).foregroundColor(.red)
            }
            
            Spacer()
        }
    }
    
    func insertion() {
        guard let insertIndex = Int(self.insertIndex) else {
            self.isIndexValid = false
            self.exceptionInfo = "Invalid Index!"
            return
        }
        guard let insertValue = Int(self.insertValue) else {
            self.isIndexValid = false
            self.exceptionInfo = "Invalid Insertion Value!"
            return
        }
        if insertIndex > self.array.count || insertIndex < 0 {
            self.isIndexValid = false
            self.exceptionInfo = "Invalid Index!"
        } else {
            self.isIndexValid = true
            self.array.insert(MyItem(val: insertValue), at: insertIndex)
        }
    }
    
    func removal() {
        guard let removeIndex = Int(self.removeIndex) else {
            self.isIndexValid = false
            self.exceptionInfo = "Invalid Index!"
            return
        }
        if removeIndex >= self.array.count || removeIndex < 0 {
            self.isIndexValid = false
            self.exceptionInfo = "Invalid Index!"
        } else {
            self.isIndexValid = true
            self.array.remove(at: removeIndex)
        }
    }
    
    func inquiry() {
        guard let inquireIndex = Int(self.inquireIndex) else {
            self.isIndexValid = false
            self.exceptionInfo = "Invalid Index!"
            return
        }
        if inquireIndex >= self.array.count || inquireIndex < 0 {
            self.isIndexValid = false
            self.exceptionInfo = "Invalid Index!"
        } else {
            self.isIndexValid = true
            self.inquireValue = self.array[inquireIndex].val
        }
    }
}
