import Foundation

// parses line to return array of numbers in string format
func readIntegers() -> [String] {
    return readLine()!.componentsSeparatedByString(" ").map { $0 }
}

// left rotates the array by a given input
func leftRotation() -> String {
    let input = readIntegers()
    let array = readIntegers()
    var newArray = [String](count: Int(input[0])!, repeatedValue: "")
    let (count, rotations) = (Int(input[0])!, Int(input[1])!)
    
    for index in 0..<count {
        // newIndex after rotation
        let newIndex = index + rotations
        if newIndex < count  { // up until count
            newArray[index] = array[newIndex]
        } else { // loops back to beginning index of array
            newArray[index] = array[newIndex - count]
        }
    }
    // joins the array
    return newArray.joinWithSeparator(" ")
}

print(leftRotation())

