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

/// Returns an array of Characters
func readStrings() -> [Character] {
    guard let line = readLine() else {
        fatalError("Unexpected end of input")
    }
    return line.characters.map{ $0 }
}

// checks if all brackets are balanced
func balancedBrackets() {
    let sequences = readInteger()
    // outloop loops through each sequence line
    outerLoop: for _ in 0..<sequences {
        // create a stack (array in this case)
        var stack = [Character]()
        // each line of sequence
        let sequence = readStrings()
        // edgeCase is when there are only opening brackets in stack and didn't reach case } ] )
        var edgeCase = false
        // inner loop loops through each bracket character
        innerLoop: for bracket in sequence {
            switch bracket {
            // if opening brackets, append and set edgeCase
            case "{", "[", "(":
                stack.append(bracket)
            // case closing brackets
            case "}", "]", ")":
                // checks for empty stack or if the bracket pairs arent matching
                if stack.isEmpty || (bracket == "}" && stack.last != "{") || (bracket == "]" && stack.last != "[") || (bracket == ")" && stack.last != "(")  {
                    edgeCase = true
                    print("NO")
                    // append closing bracket so YES doesn't print when breaking
                    stack.append(bracket)
                    // break out of checking anymore brackets
                    break innerLoop
                }
                stack.removeLast()
            default:
                fatalError("unknown bracket found")
            }
        }
        // if empty
        if stack.isEmpty {
            print("YES")
        } else if !edgeCase { // stack has opening brackets and hasn't reach if statement in case } ] )
            print("NO")
        }
    }
}

balancedBrackets()

/*
 
 //Then, on the command line use something like...
 cat input18.txt | swift balanced-brackets.playground/Contents.swift
 
 */


