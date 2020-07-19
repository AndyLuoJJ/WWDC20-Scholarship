import SwiftUI

struct QueueItem: Identifiable {
    var id = UUID()
    var val: Int
}

public struct QueueView: View {
    
    public init() { }
    
    @State var array: [QueueItem] = [
        QueueItem(val: 0)
    ]
    
    @State var enqueueValue = ""
    @State var dequeueValue: Int?
    @State var hasError = false
    @State var errorInformation = ""
    
    public var body: some View {
        VStack {
            Text("Queue")
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
                }.overlay(QueueBucketView(viewWidth: 100, viewHeight: 600))
                Spacer()
                VStack {
                    Spacer()
                    HStack {
                        Button(action: {
                            // enqueue
                            self.enqueueNewValue()
                        }) {
                            Text("Enqueue")
                        }
                        TextField("value", text: $enqueueValue, onCommit: { self.enqueueNewValue() }).frame(width: 80)
                    }
                    Spacer()
                    HStack {
                        Button(action: {
                            // dequeue
                            guard self.array.count > 0 else {
                                self.hasError = true
                                self.errorInformation = "The queue is empty"
                                return
                            }
                            self.hasError = false
                            self.dequeueValue = self.array.removeFirst().val
                        }) {
                            Text("Dequeue")
                        }
                        Text(self.dequeueValue == nil ? "" : "\(self.dequeueValue!)")
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
    
    func enqueueNewValue() {
        guard let newValue = Int(self.enqueueValue) else {
            self.hasError = true
            self.errorInformation = "Invalid Push Value!"
            return
        }
        self.hasError = false
        self.array.append(QueueItem(val: newValue))
    }
}
