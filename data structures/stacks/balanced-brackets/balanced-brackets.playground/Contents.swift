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
        let sequence = readStrings()
        // inner loop loops through each bracket character
        innerLoop: for (index, bracket) in sequence.enumerate() {
            //print("bracket is \(bracket) ... other bracket is \(sequence[sequence.count-1-index]) and index is \(index)")
            let pairingBracket = sequence[sequence.count - 1 - index]
            // if we reach halfway, then all brackets are matching
            if index >= sequence.count/2 {print("YES");break}
            //print("passed index: \(index)")
            switch bracket {
            case "{":
                // if pairing brackets, then break out of loop that checks each bracket in a sequence
                // go on to next sequence
                if  pairingBracket != "}" {
                    print("NO")
                    break innerLoop
                }
            case "(":
                if  pairingBracket != ")" {
                    print("NO")
                    break innerLoop
                }
            case "[":
                if  pairingBracket != "]" {
                    print("NO")
                    break innerLoop
                }
            default:
                fatalError("unknown bracket found")
            }
        }
    }
}

balancedBrackets()

/*
 
 //Then, on the command line use something like...
 cat input18.txt | swift balanced-brackets.playground/Contents.swift
 
 */


