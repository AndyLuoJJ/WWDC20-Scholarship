import SwiftUI

public struct EdgeView: View {
    var viewWidth: CGFloat
    var viewHeight: CGFloat
    var numberOfChildren: Int
    
    public init(viewWidth: CGFloat, viewHeight: CGFloat, numberOfChildren: Int) {
        self.viewWidth = viewWidth
        self.viewHeight = viewHeight
        self.numberOfChildren = numberOfChildren
    }
    
    public var body: some View {
        if numberOfChildren == 1 {
            return Path { path in
                path.move(to: CGPoint(x: viewWidth / 2, y: 0))
                path.addLine(to: CGPoint(x: -viewWidth / 2, y: viewHeight * 2))
            }.stroke(Color.black, lineWidth: 3)
        } else if numberOfChildren == 2 {
            return Path { path in
                path.move(to: CGPoint(x: viewWidth / 2, y: 0))
                path.addLine(to: CGPoint(x: -viewWidth / 2, y: viewHeight * 2))
                path.move(to: CGPoint(x: viewWidth / 2, y: 0))
                path.addLine(to: CGPoint(x: viewWidth * 1.5, y: viewHeight * 2))
            }.stroke(Color.black, lineWidth: 3)
        } else {
            return Path { _ in }.stroke(Color.black, lineWidth: 3)
        }
    }
}

