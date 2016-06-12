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

var numberOfCases = readLine()!.componentsSeparatedByString(" ")[1]
var arrayOfHighway = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! }

for index in 1...Int(numberOfCases)! {
    var enterAndExit = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! } // .dynamicType is String
    var lowestNum = 3
    for index2 in enterAndExit[0]...enterAndExit[1] {
        if arrayOfHighway[index2] < lowestNum {
            lowestNum = arrayOfHighway[index2]
        }
    }
    print(lowestNum)
}


/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift service-lane.playground/Contents.swift
 
 */

