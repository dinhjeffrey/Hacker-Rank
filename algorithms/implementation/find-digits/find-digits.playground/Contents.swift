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

var numberOfLines = readInt()
for index in 1...numberOfLines {
    var currentNumber = readLine()! // .dynamicType is String
    var evenlyDivisible = 0
    for index in currentNumber.characters.indices {
        var intCurrentNumber = Int(currentNumber)!
        var intCurrentIndex = Int(String(currentNumber[index]))!
        guard intCurrentIndex != 0 else { continue }
        if intCurrentNumber % intCurrentIndex == 0 {
            evenlyDivisible += 1
        }
    }
    print(evenlyDivisible)
}


/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift find-digits.playground/Contents.swift
 
 */

