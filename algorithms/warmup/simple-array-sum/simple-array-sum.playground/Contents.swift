//: Playground - noun: a place where people can play

import Foundation


// number of elements
var n = Int(readLine()!)!

// read array and map the elements to integer
var arr = readLine()!.characters.split(" ").map{Int(String($0))!}

// variable to hold the sum of the array elements
var sum = 0

for i in arr {
    sum += i
}

// prints the sum
print(sum)

/*
 //Create a txt file "solve-me-first.txt" and put in the following values for example:
 2
 3
 
 //Then, on the command line use something like...
 cat input00.txt | swift simple-array-sum.playground/Contents.swift
 
 */