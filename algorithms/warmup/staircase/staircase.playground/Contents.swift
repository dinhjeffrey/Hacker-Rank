//: Playground - noun: a place where people can play

import Foundation

// read the integer n
var n = Int(readLine()!)!

for index in 1...n {
    print("\(String(count: n - index, repeatedValue: Character(" ")))\(String(count: index, repeatedValue: Character("#")))")
}


/*
 
 //Then, on the command line use something like...
 cat input01.txt | swift staircase.playground/Contents.swift
 
 */