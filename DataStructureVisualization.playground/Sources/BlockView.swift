import SwiftUI

public struct BlockView: View {
    private var content: Int
    
    public init(content: Int) {
        self.content = content
    }
    
    public var body: some View {
        ZStack {
            Rectangle()
                .cornerRadius(12)
                .shadow(radius: 3)
                .foregroundColor(.blue)
            Text("\(content)")
        }
    }
}
