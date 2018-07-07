import UIKit

class LLNode<T> {
    var key: T?
    var next: LLNode?
    var previous: LLNode?
}

public class LinkedList<T: Equatable> {
    // new instance
    private var head = LLNode<T>()
    
    // add item
    func append(element key: T) {
        guard head.key != nil else {
            head.key = key
            return
        }
        
        var current: LLNode? = head
        
        // position node
        while current != nil {
            if current?.next == nil {
                let childToUse = LLNode<T>()
                childToUse.key = key
                childToUse.previous = current
                childToUse.next = childToUse
                break
            } else {
                current = current?.next
            }
        }
    }
}
