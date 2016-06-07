// Enter your code here

import Foundation

//MARK: STDIN STDOUT
func readData() -> NSData {
    return NSFileHandle.fileHandleWithStandardInput().availableData
}

func readString() -> String {
    return String(data: readData(), encoding:NSUTF8StringEncoding)!.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}

func readInt() -> Int {
    return Int(readString())!
}

func readArrayOfStrings() -> Array<String> {
    return readString().componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet())
}

func readArrayOfInts() -> Array<Int> {
    return readArrayOfStrings().map {
        (str: String) -> Int in
        return Int(str)!
    }
}

func readArrayOfDoubles() -> Array<Double> {
    return readArrayOfStrings().map {
        (str: String) -> Double in
        return Double(str)!
    }
}
/*
 2
 4 3
 -1 -3 4 2
 4 2
 0 -1 2 1
 */
let numberOfTimes = readLine()!
for int in 1...Int(numberOfTimes)! {
    var constraints = readLine()!
    var arrayConstraints = constraints.componentsSeparatedByString(" ")
    var studentsTimes = readLine()!
    var arrayStudentsTimes = studentsTimes.componentsSeparatedByString(" ")
    var filteredAST = arrayStudentsTimes.filter() {Int($0) <= 0} // positive array of [-1, -3, 4, 2] => [4, 2]
    if Int(arrayConstraints[1]) > filteredAST.count { // constraint [4, 3] => if 3 is >= [4,2].count
        print("YES")
    } else {
        print("NO")
    }
}


/*
 
 //Then, on the command line use something like...
 cat input07.txt | swift angry-professor.playground/Contents.swift
 
 */
