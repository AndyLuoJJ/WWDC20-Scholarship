import SwiftUI

public struct BinaryTreeView: View {
    var array: [TreeItem] = [
        TreeItem(val: 0, numberOfChildren: 2),
        TreeItem(val: 1, numberOfChildren: 2),
        TreeItem(val: 2, numberOfChildren: 2),
        TreeItem(val: 3, numberOfChildren: 0),
        TreeItem(val: 4, numberOfChildren: 0),
        TreeItem(val: 5, numberOfChildren: 0),
        TreeItem(val: 6, numberOfChildren: 0)
    ]
    var numberOfTreeNodes: Int {
        return array.count
    }
    
    public init() { }
    
    public var body: some View {
        VStack {
            Text("Binary Tree")
                .font(.custom("Marker Felt", size: 35))
                .fontWeight(.semibold)
                .foregroundColor(.green)
            VStack {
                ForEach(0 ..< 3) { i in
                    TreeRowView(array: self.array, base: i).padding([.top, .bottom], 38)
                }
            }
            Spacer()
        }
    }
}
