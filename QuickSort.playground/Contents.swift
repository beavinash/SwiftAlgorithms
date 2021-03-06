import UIKit

extension Array where Element: Comparable {
    mutating func quickSort() -> Array<Element> {
        func qSort(start startIndex: Int, _ pivot: Int) {
            if startIndex < pivot {
                let iPivot = qPartition(start: startIndex, pivot)
                qSort(start: startIndex, iPivot - 1)
                qSort(start: iPivot + 1, pivot)
            }
        }
        qSort(start: 0, self.endIndex - 1)
        return self
    }
    
    mutating func qPartition(start startIndex: Int, _ pivot: Int) -> Int {
        var wallIndex: Int = startIndex
        
        for currentIndex in wallIndex..<pivot {
            if self[currentIndex] <= self[pivot] {
                if wallIndex != currentIndex {
                    self.swapAt(currentIndex, wallIndex)
                }
                wallIndex += 1
            }
        }
        
        if wallIndex != pivot {
            self.swapAt(wallIndex, pivot)
        }
        return wallIndex
    }
}

var sequence: Array<Int> = [7, 2, 1, 4, 3, 9, 8, 6, 5]
sequence.quickSort()


