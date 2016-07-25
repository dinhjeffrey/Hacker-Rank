import Foundation

func readIntegers() -> Int {
    return Int(readLine()!)!
}

func sparseArrays() {
    let numOfStrings = readIntegers()
    var arrayOfStrings = [String]()
    for _ in 0..<numOfStrings {
        let string = readLine()!
        arrayOfStrings.append(string)
    }
    let numOfQueries = readIntegers()
    for _ in 0..<numOfQueries {
        let singleString = readLine()!
        let arrayOfSingleString = arrayOfStrings.filter {$0 == singleString}
        print(arrayOfSingleString.count)
    }
}

sparseArrays()