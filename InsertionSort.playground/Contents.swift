import UIKit

var numbers: Array<Int> = [8, 2, 10, 9, 7, 5]

extension Array where Element: Comparable {
    func insertionSort() -> Array<Element> {
        // check for edge case
        guard self.count > 1 else { return self }
        
        // mutated copy
        var output: Array<Element> = self
        
        for primaryIndex in 0..<output.count {
            let key = output[primaryIndex]
            var secondaryIndex = primaryIndex
            
            while secondaryIndex > -1 {
                if key < output[secondaryIndex] {
                    // move to correct position
                    output.remove(at: secondaryIndex + 1)
                    output.insert(key, at: secondaryIndex)
                }
                secondaryIndex -= 1
            }
        }
        return output
    }
}

let results: Array<Int> = numbers.insertionSort()


