import UIKit

var numbers: Array<Int> = [8, 2, 10, 9, 7, 5]

extension Array where Element: Comparable {
    func selectionSort() -> Array<Element> {
        // check for edge case
        guard self.count > 1 else { return self }
        
        // mutated copy
        var output: Array<Element> = self
        
        for primaryIndex in 0..<output.count {
            var minimum = primaryIndex
            var secondaryIndex = primaryIndex + 1
            
            while secondaryIndex < output.count {
                if output[minimum] > output[secondaryIndex] {
                    minimum = secondaryIndex
                }
                secondaryIndex += 1
            }
            
            // swap minimum value with array iteration
            if primaryIndex != minimum {
                output.swapAt(primaryIndex, minimum)
            }
        }
        return output
    }
}


let results: Array<Int> = numbers.selectionSort()
