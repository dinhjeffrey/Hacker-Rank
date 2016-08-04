//: Playground - noun: a place where people can play

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
    case one = 1, two, three, four
}

func textEditor(operation: [String]) {
    guard let type = Type(rawValue: Int(operation[0])!) else { fatalError("unknown type") }
    switch type {
    case .one:
        string += operation[1]
        stack.append(string)
    case .two:
        string = string.substringToIndex(string.endIndex.advancedBy(-Int(operation[1])!))
        stack.append(string)
    case .three:
        print(string[string.startIndex.advancedBy(Int(operation[1])!)])
    case .four:
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


