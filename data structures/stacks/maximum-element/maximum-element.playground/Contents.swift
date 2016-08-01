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

// returns maximum element in stack
func maxElement() {
    let queries = readInteger()
    var stack = [Int]()
    
    // loops through each query
    for _ in 0..<queries {
        let input = readIntegers()
        let type = input[0]
        switch type {
        case 1:
            // 2nd input only given when type is 1
            let element = input[1]
            stack.append(element)
        case 2:
            // deletes element at top of the stack
            // stack is LIFO
            stack.removeLast()
        case 3:
            if let maxElement = stack.maxElement() {
                print(maxElement)
            }
        default:
            fatalError("Unknown input type")
        }
    }
}

maxElement()

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift maximum-element.playground/Contents.swift
 
 */