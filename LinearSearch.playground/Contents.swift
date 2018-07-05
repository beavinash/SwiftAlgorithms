import UIKit

var numberList: Array<Int> = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

extension Array where Element: Comparable {
    func linearSearch(forElement key: Element) -> Bool {
        // check for all values
        for number in self {
            if number == key {
                return true
            }
        }
        return false
    }
}

numberList.linearSearch(forElement: 8)
numberList.linearSearch(forElement: 100)
