// Enter your code here
import Foundation

let arrayCount = 7 // Int
var array = [9, 8, 6, 7, 3, 5, 4, 1, 2] //[Int]
var left = [Int]()  // temp
var right = [Int]() // temp
let primaryFirstElement = String(array[0])
let primaryLeft = String()
let primaryRight = String()


var firstElementHolder = [Int]()
var restOfElementHolder = [Int]()

var firstRightHolder = [Int]()

func quickSort(arrayInScope: [Int]) {
    var leftInScope = [Int]()
    var rightInScope = [Int]()
    let equalInScope = arrayInScope[0]
    for (index, element) in arrayInScope.enumerate() {
        guard index > 0 else { continue }
        if element < equalInScope {
            leftInScope.append(element)
        } else {
            rightInScope.append(element)
        }
    }
    left = leftInScope
    right = rightInScope
    if arrayInScope == array {
        firstRightHolder = rightInScope
        guard !right.isEmpty else { // if first number is biggest
            return
        }
    }
    let combinedElements = leftInScope + [equalInScope] + rightInScope
    if combinedElements == arrayInScope.sort() {
        print( combinedElements.map { String($0) }.joinWithSeparator(" ") )
        restOfElementHolder = combinedElements
        return
    }
    if leftInScope.isEmpty {
        firstElementHolder.append(equalInScope)
    }
}

quickSort(array)

var leftHolder = [Int]()
var rightHolder = [Int]()

// left side
repeat {
    quickSort(left)
    leftHolder = left
    rightHolder = right
    left = right
} while leftHolder.isEmpty && rightHolder.count > 1
var primaryLeftCombined = (firstElementHolder + restOfElementHolder).map { String($0) }.joinWithSeparator(" ")
if !firstElementHolder.isEmpty {
    print( primaryLeftCombined )
}

firstElementHolder = []
restOfElementHolder = []

// right side
left = firstRightHolder
repeat {
    quickSort(left)
    leftHolder = left
    rightHolder = right
    left = right
} while leftHolder.isEmpty && rightHolder.count > 1
var primaryRightCombined = (firstElementHolder + restOfElementHolder).map { String($0) }.joinWithSeparator(" ")
if !firstElementHolder.isEmpty {
    print( primaryRightCombined )
}

print ( "\(primaryLeftCombined) \(primaryFirstElement) \(primaryRightCombined)" )






