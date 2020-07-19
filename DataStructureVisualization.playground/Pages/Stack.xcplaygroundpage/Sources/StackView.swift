import SwiftUI

struct StackItem: Identifiable {
    var id = UUID()
    var val: Int
}

public struct StackView: View {
    
    public init() { }
    
    @State var array: [StackItem] = [
        StackItem(val: 0)
    ]
    
    @State var pushValue = ""
    @State var popValue: Int?
    @State var hasError = false
    @State var errorInformation = ""
    
    public var body: some View {
        VStack {
            Text("Stack")
                .font(.custom("Marker Felt", size: 35))
                .fontWeight(.semibold)
                .foregroundColor(.green)
            Spacer(minLength: 70)
            HStack {
                ScrollView(.vertical, showsIndicators: false) {
                    VStack {
                        ForEach(array) { item in
                            BlockView(content: item.val)
                                .frame(width: 100, height: 100)
                        }
                    }
                }.overlay(StackBucketView(viewWidth: 100, viewHeight: 600))
                Spacer()
                VStack {
                    Spacer()
                    HStack {
                        Button(action: {
                            // push into stack
                            self.pushNewValue()
                        }) {
                            Text("Push")
                        }
                        TextField("value", text: $pushValue, onCommit: { self.pushNewValue() }).frame(width: 80)
                        Text("into stack")
                    }
                    Spacer()
                    HStack {
                        Button(action: {
                            // pop from stack
                            self.hasError = false
                            self.popValue = self.array.popLast()?.val
                        }) {
                            Text("Pop")
                        }
                        Text(self.popValue == nil ? "" : "\(self.popValue!)")
                        Text("from stack")
                    }
                    if hasError {
                        Spacer()
                        Text(errorInformation).foregroundColor(.red)
                    }
                    Spacer()
                }
                Spacer()
            }.padding([.leading, .bottom], 30)
        }
    }
    
    func pushNewValue() {
        guard let newValue = Int(self.pushValue) else {
            self.hasError = true
            self.errorInformation = "Invalid Push Value!"
            return
        }
        self.hasError = false
        self.array.append(StackItem(val: newValue))
    }
}
