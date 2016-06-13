// Enter your code here

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
    return Int(readLine()!)!
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

var numberOfCases = readLine()! // String
var arrayOfNumbers = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! } // [Int]
print(arrayOfNumbers.count)
while arrayOfNumbers.count > 1 {
    var min = arrayOfNumbers.minElement()!
    arrayOfNumbers = arrayOfNumbers.map{$0 - min}.filter{$0 > 0}
    if arrayOfNumbers.count == 0 { break }
    print(arrayOfNumbers.count)
}


/*
 
 //Then, on the command line use something like...
 cat input01.txt | swift cut-the-sticks.playground/Contents.swift
 
 */