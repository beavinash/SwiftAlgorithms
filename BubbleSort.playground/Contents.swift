import UIKit

var numbers: Array<Int> = [8, 2, 10, 9, 7, 5]

extension Array where Element: Comparable {
    func bubbleSort() -> Array<Element> {
        
        // check for edge case
        guard self.count > 1 else { return self }
        
        // mutated copy
        var output: Array<Element> = self
        
        for primaryIndex in 0..<output.count {
            let passes = (output.count - 1) - primaryIndex
            
            // half-open range operation
            for secondaryindex in 0..<passes {
                let key = output[secondaryindex]
                
                // compare and swap positions
                if (key > output[secondaryindex + 1]) {
                    output.swapAt(secondaryindex, secondaryindex + 1)
                }
            }
        }
        return output
    }
}

let results: Array<Int> = numbers.bubbleSort()
