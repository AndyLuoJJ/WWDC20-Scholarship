import SwiftUI

public struct QueueBucketView: View {
    private var viewWidth: CGFloat
    private var viewHeight: CGFloat
    
    public init(viewWidth: CGFloat, viewHeight: CGFloat) {
        self.viewWidth = viewWidth
        self.viewHeight = viewHeight
    }
    
    public var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 0, y: viewHeight))
            path.addLine(to: CGPoint.zero)
            path.move(to: CGPoint(x: viewWidth, y: 0))
            path.addLine(to: CGPoint(x: viewWidth, y: viewHeight))
        }.stroke(Color.black, lineWidth: 3)
    }
}
