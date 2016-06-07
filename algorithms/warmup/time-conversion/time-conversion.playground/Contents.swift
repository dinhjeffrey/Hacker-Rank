//: Playground - noun: a place where people can play

import Foundation

import Foundation
// Read the string
var s = readLine()!
let ampm = s.endIndex.advancedBy(-2) // last 2 indices of s
let twelve = s.startIndex.advancedBy(2) // first 2 indices of s
if s.substringFromIndex(ampm) == "AM" && s.substringToIndex(twelve) == "12" { // AM and twelve
    print("00\(s.substringWithRange(twelve..<ampm))")
} else if s.substringFromIndex(ampm) == "AM" { // AM
    print(s.substringToIndex(ampm))
} else if s.substringFromIndex(ampm) == "PM" && s.substringToIndex(twelve) == "12" { // PM and twelve
    print(s.substringToIndex(ampm))
} else { // PM
    let addTwelve = Int(s.substringToIndex(twelve))! + 12 // add 12 because PM
    print("\(addTwelve)\(s.substringWithRange(twelve..<ampm))")
}

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift time-conversion.playground/Contents.swift
 
 */