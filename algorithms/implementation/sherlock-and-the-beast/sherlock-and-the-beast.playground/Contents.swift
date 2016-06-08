//: Playground - noun: a place where people can play

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
/*
 4
 1
 3
 5
 11
 */

let numberOfReadLines = readInt()

for index in 1...numberOfReadLines {
    var numberOfDigits = readInt()
    if numberOfDigits == 1 || numberOfDigits == 2 || numberOfDigits == 4 || numberOfDigits == 7 {
        print(-1)
    } else if numberOfDigits % 3 - 2 == 0 {
        print(String(count: numberOfDigits - 5, repeatedValue: Character("5")) + String(count: 5, repeatedValue: Character("3")))
    } else if (numberOfDigits - 10) % 3 == 0 {  //
        print(String(count: numberOfDigits - 10, repeatedValue: Character("5")) + String(count: 10, repeatedValue: Character("3")))
    } else if numberOfDigits % 3 == 0 {
        print(String(count: numberOfDigits, repeatedValue: Character("5")))
    } else { // n % 5 == 0
        print(String(count: numberOfDigits, repeatedValue: Character("3")))
    }
}


/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift sherlock-and-the-beast.playground/Contents.swift
 
 */