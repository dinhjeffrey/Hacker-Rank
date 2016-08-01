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
func readCharacters() -> [Character] {
    guard let line = readLine() else {
        fatalError("Unexpected end of input")
    }
    return Array(line.characters)
}

enum Bracket: Character {
    case Left = "("
    case Right = ")"
    case LeftCurly = "{"
    case RightCurly = "}"
    case LeftSquare = "["
    case RightSquare = "]"
    
    /// For a closing bracket, the corresponding opening bracket is returned.
    /// For an opening bracket, `nil` is returned.
    var matchingOpen: Bracket? {
        switch self {
        case .Right:        return .Left
        case .RightCurly:   return .LeftCurly
        case .RightSquare:  return .LeftSquare
        default:            return nil
        }
    }
}

func isBalanced(sequence: [Character]) -> Bool {
    var stack = [Bracket]()
    // loops through each bracket in a sequence
    print(sequence)
    for char in sequence {
        // checks if `bracket` is in enum
        if let bracket = Bracket(rawValue: char) {
            // if `bracket` is a closing bracket, continue below
            if let open = bracket.matchingOpen {
                // `bracket` is a closing bracket and `open` the corresponding opening bracket:
                print("bracket is \(bracket) and open is \(open)")
                // if not matching bracket, return false
                guard let last = stack.last where last == open  else {
                    return false
                }
                // if matching bracket, removeLast
                stack.removeLast()
            } else {
                // `bracket` is an opening bracket:
                stack.append(bracket)
            }
        } else {
            fatalError("unknown bracket found")
        }
    }
    // if stack is empty, all brackets match and returns true
    // if not empty, not all brackets matched, returns false
    return stack.isEmpty
}

func balancedBrackets() {
    let numSequences = readInteger()
    for _ in 0..<numSequences {
        let sequence = readCharacters()
        let balanced = isBalanced(sequence)
        print(balanced ? "YES" : "NO")
    }
}

balancedBrackets()

/*
 
 //Then, on the command line use something like...
 cat input18.txt | swift balanced-brackets.playground/Contents.swift
 
 */




