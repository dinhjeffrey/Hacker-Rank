//: Playground - noun: a place where people can play

import Foundation

/*
 6
 1 4 4 5 6 2
 */

var arrayCount = readLine()! // String
var arrayOfNumbers = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! } // [Int]
var tempStrArr = [String]()
for (index, element) in arrayOfNumbers.enumerate() {
    guard index != 0 else { continue }
    var tempIndex = index
    while element < arrayOfNumbers[tempIndex - 1] {
        arrayOfNumbers[tempIndex] = arrayOfNumbers[tempIndex - 1]
        tempIndex -= 1
        guard tempIndex != 0 else { break } // stop from indexing -1 -> crash
    }
    //guard tempIndex != index else { continue } // if didn't enter while loop, we don't want to print array
    arrayOfNumbers[tempIndex] = element
    tempStrArr = arrayOfNumbers.map { String($0) }
    print(tempStrArr.joinWithSeparator(" "))
}

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift insertionsort2.playground/Contents.swift
 
 */