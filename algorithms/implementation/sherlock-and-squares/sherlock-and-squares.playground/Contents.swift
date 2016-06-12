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

var numberOfCases = readInt()
for index in 1...numberOfCases {
    var currentLine = readLine()! // .dynamicType is String
    var splitIntoArray = currentLine.componentsSeparatedByString(" ")
    var lowestNum = Int(sqrt(Double(splitIntoArray[0])!))
    var highestNum = Int(sqrt(Double(splitIntoArray[1])!))
    
    guard pow(Double(lowestNum), 2) != Double(splitIntoArray[1]) else {print(1); continue}
    guard splitIntoArray[0] != splitIntoArray[1] else {print(0); continue} //&& (pow(Double(lowestNum), 2) != Double(splitIntoArray[0]
    if pow(Double(lowestNum), 2) == Double(splitIntoArray[0])! {
        //print("Double(lowestNum) is \(Double(lowestNum)) and pow is \(pow(Double(splitIntoArray[0])!, 2))")
        print(highestNum - lowestNum + 1)
    } else {
        print(highestNum - lowestNum)
    }
}


/*
 
 //Then, on the command line use something like...
 cat input07.txt | swift sherlock-and-squares.playground/Contents.swift
 
 */

