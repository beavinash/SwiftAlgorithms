import UIKit
import XCTest

protocol Sortable {
    func isSorted<T: Comparable>(_ sequence: Array<T>) -> Bool
}


extension Sortable {
    func isSorted<T: Comparable> (_ sequence: Array<T>) -> Bool {
        guard sequence.count > 1 else {
            return true
        }
        
        var index = sequence.startIndex
        
        // compare sequence values
        while index < sequence.endIndex - 1 {
            if sequence[index] > sequence[sequence.index(after: index)] {
                return false
            }
            index = sequence.index(after: index)
        }
        return true
    }
}

class QuickTest: XCTestCase, Sortable {
    func testDecendingQSort() {
        let results = [0, 1, 2, 4, 6, 8, 9, 9]
        processQuickResults(with: results)
    }
    
    func processQuickResults<T: Comparable> (with sequence: Array<T>) {
        XCTAssert(isSorted(sequence), "Test failed")
    }
}



