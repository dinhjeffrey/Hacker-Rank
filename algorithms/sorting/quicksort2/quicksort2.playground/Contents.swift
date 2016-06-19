// Enter your code here
import Foundation

/*
 
 
 i don't think this is efficient... look up solutions after solving
 
 input:
 9 8 6 7 3 5 4 1 2
 
 output:
 1 2
 4 5
 1 2 3 4 5
 1 2 3 4 5 6 7
 1 2 3 4 5 6 7 8
 1 2 3 4 5 6 7 8 9
 
 // print if the array is sorted and count > 1
 // 3 5 4 1 2
 */

let arrayCount = 7 // Int
var array = [9, 8, 6, 7, 3, 5, 4, 1, 2] //[Int]
var left = [Int]()  // temp
var right = [Int]() // temp
let primaryPivot = String(array[0])
var primaryLeft = [Int]()
var primaryRight = [Int]()
var storedElements = [Int]()


func quickSort(arrayInScope: [Int]) {
    var leftInScope = [Int]()
    var rightInScope = [Int]()
    let pivotScope = arrayInScope[0]
    for (index, element) in arrayInScope.enumerate() {
        guard index > 0 else { continue }
        if element < pivotScope {
            leftInScope.append(element)
        } else {
            rightInScope.append(element)
        }
    }
    left = leftInScope
    right = rightInScope
    let combinedElements = leftInScope + [pivotScope] + rightInScope
    if combinedElements == arrayInScope.sort() {
        print( combinedElements.map { String($0) }.joinWithSeparator(" ") )
        // left =
        return
    } else if !leftInScope.isEmpty && !rightInScope.isEmpty {
        storedElements.append(pivotScope)
    }
}

quickSort(array)
primaryLeft = left
primaryRight = right


var leftHolder = [Int]()
var rightHolder = [Int]()
// left side
repeat {
    quickSort(left)
    leftHolder = left
    rightHolder = right
    storedElements
} while ( leftHolder.count != primaryLeft.count)


//
//var leftHolder = [Int]()
//var rightHolder = [Int]()
//
//
//
//// left side
//repeat {
//    quickSort(left)
//    leftHolder = left
//    rightHolder = right
//} while ( leftHolder.isEmpty && rightHolder.count > 1 ) || ( rightHolder.isEmpty && leftHolder.count > 1 )
//
//var primaryLeftCombined = (firstElementHolder + restOfElementHolder).map { String($0) }.joinWithSeparator(" ")
//if !firstElementHolder.isEmpty {
//    print( primaryLeftCombined )
//}
//
//firstElementHolder = []
//restOfElementHolder = []
//
//// right side
//left = firstRightHolder
//repeat {
//    quickSort(left)
//    leftHolder = left
//    rightHolder = right
//    left = right
//} while leftHolder.isEmpty && rightHolder.count > 1
//var primaryRightCombined = (firstElementHolder + restOfElementHolder).map { String($0) }.joinWithSeparator(" ")
//if !firstElementHolder.isEmpty {
//    print( primaryRightCombined )
//}
//
//print ( "\(primaryLeftCombined) \(primaryFirstElement) \(primaryRightCombined)" )
//









//var firstElementHolder = [Int]()
//var restOfElementHolder = [Int]()
//
//var firstRightHolder = [Int]()
//
//func quickSort(arrayInScope: [Int]) {
//    var leftInScope = [Int]()
//    var rightInScope = [Int]()
//    let equalInScope = arrayInScope[0]
//    for (index, element) in arrayInScope.enumerate() {
//        guard index > 0 else { continue }
//        if element < equalInScope {
//            leftInScope.append(element)
//        } else {
//            rightInScope.append(element)
//        }
//    }
//    left = leftInScope
//    right = rightInScope
//    if arrayInScope == array {
//        firstRightHolder = rightInScope
//    }
//    let combinedElements = leftInScope + [equalInScope] + rightInScope
//    if combinedElements == arrayInScope.sort() {
//        print( combinedElements.map { String($0) }.joinWithSeparator(" ") )
//        restOfElementHolder = combinedElements
//        return
//    }
//    if leftInScope.isEmpty {
//        firstElementHolder.append(equalInScope)
//    }
//}
//
//quickSort(array)
//
//var leftHolder = [Int]()
//var rightHolder = [Int]()
//
//
//
//print(left)
//print(right)
//// left side
//repeat {
//    quickSort(left)
//    leftHolder = left
//    rightHolder = right
//} while ( leftHolder.isEmpty && rightHolder.count > 1 ) || ( rightHolder.isEmpty && leftHolder.count > 1 )
//
//var primaryLeftCombined = (firstElementHolder + restOfElementHolder).map { String($0) }.joinWithSeparator(" ")
//if !firstElementHolder.isEmpty {
//    print( primaryLeftCombined )
//}
//
//firstElementHolder = []
//restOfElementHolder = []
//
//// right side
//left = firstRightHolder
//repeat {
//    quickSort(left)
//    leftHolder = left
//    rightHolder = right
//    left = right
//} while leftHolder.isEmpty && rightHolder.count > 1
//var primaryRightCombined = (firstElementHolder + restOfElementHolder).map { String($0) }.joinWithSeparator(" ")
//if !firstElementHolder.isEmpty {
//    print( primaryRightCombined )
//}
//
//print ( "\(primaryLeftCombined) \(primaryFirstElement) \(primaryRightCombined)" )






