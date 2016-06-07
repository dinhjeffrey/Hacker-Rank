//: Playground - noun: a place where people can play

import Foundation

// MARK: Standard Input

/// Reads a line from standard input and returns a string form stdin
public func getLine() -> String {
    var buf = String() //will accumulate the result string
    var c = getchar() //used to read the next character. getchar is a c function that returns ASCII of Int32
    
    while c != EOF && c != 10 { //loop until reach end of file or newline. 10 is ascii code for newline
        buf.append(UnicodeScalar(UInt32(c))) //since String is a collecton of unicode scalars
        c = getchar()
    }
    return buf
}

/// this is an alias for getLine
public func readLn() -> String {
    return getLine()
}

/// Read line from standard input and convert to integer
///:returns: integer value
public func readLn() -> Int {
    return Int(getLine())!
}

/// Read line and convert to array of strings (words)
///:returns: array of strings
public func readLn() -> [String] {
    return getLine().componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
}

/// Read line and convert to array of integers
///:returns: array of integers
public func readLn() -> [Int] {
    let words: [String] = readLn()
    return words.map { Int($0)! }
}

//solve-me-first

 let a: Int = readLn()    //calls readLn() -> Int, because a is of Int type
 let b: Int = readLn()
 print(a + b)


/*
 //Create a txt file "solve-me-first.txt" and put in the following values for example:
 2
 3
 
 //Then, on the command line use something like...
 cat input00.txt | swift solve-me-first.playground/Contents.swift
 
 */

