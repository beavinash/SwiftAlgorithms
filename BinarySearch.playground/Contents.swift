import UIKit

var numberList: Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

extension Array where Element: Comparable {
    mutating func binarySearch(forElement key: Element) -> Bool {
        
        var result = false
        
        // establish indices
        let min = self.startIndex
        let max = self.endIndex - 1
        let mid = midIndex()
        
        // check bounds
        if key > self[max] || key < self[min] {
            print("Search value \(key) not found.")
            return false
        }
        
        // evaluate chosen number
        let n = self[mid]
        
        if n > key {
            var slice = Array(self[min...mid - 1])
            result = slice.binarySearch(forElement: key)
        }
        
        if n < key {
            var slice = Array(self[mid + 1...max])
            result = slice.binarySearch(forElement: key)
        }
        
        else {
            result = true
        }
        
        
        return result
    }
    
    // returns middle index
    func midIndex() -> Index {
        return startIndex + (count / 2)
    }
}


numberList.binarySearch(forElement: 8)
numberList.binarySearch(forElement: 100)
