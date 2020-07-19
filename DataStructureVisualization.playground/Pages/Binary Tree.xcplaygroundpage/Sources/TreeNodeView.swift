import SwiftUI

public struct TreeNodeView: View {
    var content: Int
    var numberOfChildren: Int
    
    public init(content: Int, numberOfChildren: Int) {
        self.content = content
        self.numberOfChildren = numberOfChildren
    }
    
    public var body: some View {
        BlockView(content: content)
            .frame(width: 80, height: 80)
            .overlay(
                EdgeView(viewWidth: 40, viewHeight: 40, numberOfChildren: numberOfChildren).offset(x: 20, y: 80),
                alignment: .center)
    }
}
