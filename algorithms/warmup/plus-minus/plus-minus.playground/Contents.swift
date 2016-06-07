//: Playground - noun: a place where people can play

import Foundation

// number of elements
var n = Int(readLine()!)!

// read array and map the elements to integer
var arr = readLine()!.characters.split(" ").map{Int(String($0))!}

var positives = arr.filter() {$0 > 0}
var negatives = arr.filter() {$0 < 0}
var zeroes = arr.filter() {$0 == 0}

print(Double(positives.count) / Double(n))
print(Double(negatives.count) / Double(n))
print(Double(zeroes.count) / Double(n))


/*
 
 //Then, on the command line use something like...
 cat input01.txt | swift plus-minus.playground/Contents.swift
 
 */