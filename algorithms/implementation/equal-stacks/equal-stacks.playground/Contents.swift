//: Playground - noun: a place where people can play

import Foundation
let numOfCylindersOneTwoThree: [Int] = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! }
let C1H: [Int] = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! }
let C2H: [Int] = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! }
let C3H: [Int] = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! }

var cylinderOneHeight: [Int] = C1H
var cylinderTwoHeight: [Int] = C2H
var cylinderThreeHeight: [Int] = C3H

let C1T: Int = cylinderOneHeight.reduce(0) {$0 + $1}
let C2T: Int = cylinderTwoHeight.reduce(0) {$0 + $1}
let C3T: Int = cylinderThreeHeight.reduce(0) {$0 + $1}

var cylinderOneTotal: Int = C1T
var cylinderTwoTotal: Int = C2T
var cylinderThreeTotal: Int = C3T


while (cylinderOneTotal != cylinderTwoTotal) || (cylinderTwoTotal != cylinderThreeTotal) || (cylinderOneTotal != cylinderThreeTotal) {
    if (cylinderOneTotal >= cylinderTwoTotal) && (cylinderOneTotal >= cylinderThreeTotal) {
        let firstValue = cylinderOneHeight.removeFirst()
        //print(cylinderOneHeight.count)
        cylinderOneTotal -= firstValue
    } else if (cylinderTwoTotal >= cylinderOneTotal) && (cylinderTwoTotal >= cylinderThreeTotal) {
        let firstValue = cylinderTwoHeight.removeFirst()
        //print(cylinderTwoHeight.count)
        cylinderTwoTotal -= firstValue
    } else if (cylinderThreeTotal >= cylinderOneTotal) && (cylinderThreeTotal >= cylinderTwoTotal) {
        let firstValue = cylinderThreeHeight.removeFirst()
        //print(cylinderThreeHeight.count)
        cylinderThreeTotal -= firstValue
    }
}
print(cylinderOneTotal)

/*
 cat input04.txt | swift equal-stacks.playground/Contents.swift
 */
