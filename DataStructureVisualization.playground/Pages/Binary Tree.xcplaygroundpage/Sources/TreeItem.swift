import SwiftUI
public struct TreeItem: Identifiable {
    public var id = UUID()
    public var val: Int
    public var numberOfChildren: Int
    
    public init(val: Int, numberOfChildren: Int) {
        self.val = val
        self.numberOfChildren = numberOfChildren
    }
}
