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
    var currentCycle = readInt()
    var treeHeight = 1
    guard currentCycle >= 1 else {
        print(treeHeight)
        continue
    }
    for index in 1...currentCycle {
        if index % 2 == 0 {
            treeHeight += 1
        } else {
            treeHeight *= 2
        }
    }
    print(treeHeight)
}

/*
 
 //Then, on the command line use something like...
 cat input01.txt | swift utopian-tree.playground/Contents.swift
 
 */