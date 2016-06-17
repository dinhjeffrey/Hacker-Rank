//: Playground - noun: a place where people can play

import Foundation

/*
 5
 2 1 3 1 2
 */

var arrayCount = readLine()! // String
var arrayOfNumbers = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! } // [Int]
var tempStrArr = [String]()
var shiftCount = 0
for (index, element) in arrayOfNumbers.enumerate() { // [2 1 3 1 2]
    guard index != 0 else { continue }
    var tempIndex = index
    while element < arrayOfNumbers[tempIndex - 1] { //[1 < 2]
        arrayOfNumbers[tempIndex] = arrayOfNumbers[tempIndex - 1]
        tempIndex -= 1
        shiftCount += 1
        //print("arrayOfNumbers is \(arrayOfNumbers) and shiftCount is \(shiftCount)")
        guard tempIndex != 0 else { break } // stop from indexing -1 -> crash
    }
    //guard tempIndex != index else { continue } // if didn't enter while loop, we don't want to print array
    arrayOfNumbers[tempIndex] = element
}
print(shiftCount)

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift runningtime.playground/Contents.swift
 
 */
