//: Playground - noun: a place where people can play

// number of elements
var n = Int(readLine()!)!

// read array and map the elements to integer
var arr = readLine()!.characters.split(" ").map{Int(String($0))!}

// variable to hold the sum of the array elements
var sum = 0

for i in arr {
    // sum the array elements
    sum += i
    
}

// prints the sum
print(sum)

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift a-very-big-sum.playground/Contents.swift
 
 */
