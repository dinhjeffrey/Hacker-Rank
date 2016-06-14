//: Playground - noun: a place where people can play

import Foundation

/*
 4
 6
 1 4 5 7 9 12
 */

var indexToSearch = Int(readLine()!)! // Int
var arrayCount = readLine()! // String
var arrayOfNumbers = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! } // [Int]
print(arrayOfNumbers.indexOf(indexToSearch)!)

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift tutorial-intro.playground/Contents.swift
 
 */