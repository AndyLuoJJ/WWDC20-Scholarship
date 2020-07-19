import SwiftUI

public struct LinkedNodeView: View {
    private var content: Int
    private var flag: String
    
    public init(content: Int, flag: String) {
        self.content = content
        self.flag = flag
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            VStack(alignment: .leading) {
                if flag.contains("h") {
                    Text("head").offset(x: 15)
                    Image(systemName: "arrow.down").offset(x: 23)
                }
                HStack {
                    ZStack {
                        Circle()
                            .frame(width: 60, height: 60)
                            .foregroundColor(.blue)
                        Text("\(content)")
                            .foregroundColor(.white)
                    }
                    if flag.contains("c") {
                        Image(systemName: "arrow.left")
                        Text("current")
                    }
                }
                Image(systemName: "arrow.down")
                .offset(x: 23)
                if flag.contains("t") {
                    Text("nil").offset(x: 21)
                }
            }
        }
    }
}
