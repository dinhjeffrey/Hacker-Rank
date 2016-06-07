//: Playground - noun: a place where people can play

import Foundation

// read the integer n
var n = Int(readLine()!)!

// declare 2d array
var arr2d : [[Int]] = []

// declare primary and secondary diagonals
var primaryArr = [Int]()
var secondaryArr = [Int]()

// read array row-by-row
for index in 1...n {
    arr2d.append(readLine()!.characters.split(" ").map{Int(String($0))!})
}

// creating primaryArr and secondaryArr
for (index, element) in arr2d.enumerate() { // need enumerate when using (index, element)
    primaryArr.append(element[index])
    secondaryArr.append(element[element.endIndex.predecessor() - index])
}
let primaryReduced = primaryArr.reduce(0) {$0 + $1}
let secondaryReduced = secondaryArr.reduce(0) {$0 + $1}
let answer = abs(primaryReduced - secondaryReduced)
print(answer)

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift diagonal-difference.playground/Contents.swift
 
 */
