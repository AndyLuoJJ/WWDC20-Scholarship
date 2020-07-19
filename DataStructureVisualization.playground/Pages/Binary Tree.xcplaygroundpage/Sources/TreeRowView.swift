import SwiftUI

public struct TreeRowView: View {
    var array: [TreeItem]
    var base: Int
    
    public init(array: [TreeItem], base: Int) {
        self.array = array
        self.base = base
    }
    
    var number: Int {
        return Int(pow(2.0, Double(base)))
    }
    
    public var body: some View {
        HStack {
            ForEach(0 ..< number) { j in
                TreeNodeView(content: self.array[self.number+j-1].val, numberOfChildren: self.array[self.number+j-1].numberOfChildren).padding([.leading, .trailing], self.number == 4 ? 0 : 10)
            }
        }
    }
}
