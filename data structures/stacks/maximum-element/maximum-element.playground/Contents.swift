import Foundation

/// Returns an integer read from one line of standard input.
func readInteger() -> Int {
    guard let line = readLine() else {
        fatalError("Unexpected end of input")
    }
    guard let i = Int(line) else {
        fatalError("Invalid integer in input")
    }
    return i
}

// Returns an array of integers read from one line of standard input.
func readIntegers() -> [Int] {
    guard let line = readLine() else {
        fatalError("Unexpected end of input")
    }
    return line.componentsSeparatedByString(" ").map{ Int($0)! }
}

var stack = [Int]()

func inputs() {
    let queries = readInteger()
    for _ in 0..<queries {
        let input = readIntegers()
        maxElement(input)
    }
}

func maxElement(input: [Int]) {
    let type = input[0]
    switch type {
    case 1:
        let element = input[1]
        stack.append(element)
    case 2:
        stack.removeLast()
    case 3:
        if let maxElement = stack.maxElement() {
            print(maxElement)
        }
    default:
        fatalError("unknown input type")
    }
}

inputs()

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift maximum-element.playground/Contents.swift
 
 */