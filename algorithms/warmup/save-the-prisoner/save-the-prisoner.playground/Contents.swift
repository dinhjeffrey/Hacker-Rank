//: Playground - noun: a place where people can play

// Enter your code here
import Foundation

var testCases: Int = Int(readLine()!)!

for index in 1...testCases {
    var PSS: [Int] = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! }
    var prisoners: Int = PSS[0] // 5
    var sweets: Int = PSS[1] // 2
    var start: Int = PSS[2] // 1
    
    var warnedPrisoner =  (start+sweets) % prisoners
    guard warnedPrisoner - 1 != 0 else {
        print(prisoners)
        continue
    }
    print(warnedPrisoner - 1)
}




/*
 //Create a txt file "solve-me-first.txt" and put in the following values for example:
 
 
 //Then, on the command line use something like...
 cat input00.txt | swift save-the-prisoner.playground/Contents.swift
 
 */