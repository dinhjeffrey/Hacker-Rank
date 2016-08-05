import Foundation

func readInteger() -> Int {
    guard let line = readLine() else { fatalError("cannot read line") }
    guard let i = Int(line) else { fatalError("cannot convert line to int") }
    return i
}

func readStrings() -> [String] {
    guard let line = readLine() else { fatalError("cannot read line") }
    let strings = line.componentsSeparatedByString(" ").map { $0 }
    return strings
}

var stack = [String]()

var string = String()

enum Type: Int {
    case append = 1, delete, print, undo
}

func textEditor(operation: [String]) {
    guard let type = Type(rawValue: Int(operation[0])!) else { fatalError("unknown type") }
    switch type {
    case .append:
        stack.append(string)
        string += operation[1]
    case .delete:
        guard string.characters.count > Int(operation[1]) else { stack.append(string); string = ""; return }
        stack.append(string)
        string = string.substringToIndex(string.endIndex.advancedBy(-Int(operation[1])!))
    case .print:
        print(string[string.startIndex.advancedBy(Int(operation[1])!-1)])
    case .undo:
        if !stack.isEmpty {
            string = stack.last!
            stack.popLast()
        }
    }
}

func inputs() {
    let operations = readInteger()
    for _ in 0..<operations {
        let operation = readStrings()
        textEditor(operation)
    }
}

inputs()

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift simple-text-editor.playground/Contents.swift
 
 */



