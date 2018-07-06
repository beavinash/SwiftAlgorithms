import UIKit

var numberList: Array<Int> = [7, 2, 1, 4, 3, 9, 8, 6, 5]

extension Array where Element: Comparable {
    func insertionSort() -> Array<Element> {
        // check for trivial case
        guard self.count > 1 else {
            return self
        }
        
        var output: Array<Element> = self
        
        for primaryIndex in 0..<output.count {
            let key = output[primaryIndex]
            var secondaryIndex = primaryIndex
            
            while (secondaryIndex > -1) {
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

let results: Array<Int> = numberList.insertionSort()
