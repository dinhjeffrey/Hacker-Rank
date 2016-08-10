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
 
 
 import Foundation
 
 
 let data = NSFileHandle.fileHandleWithStandardInput().readDataToEndOfFile()
 let input = String(data: data, encoding: NSUTF8StringEncoding)!
 let scanner = NSScanner(string: input)
 let charset = NSCharacterSet.newlineCharacterSet()
 
 var stack =  [String]()
 var string = ""
 
 var numberOfOperations = 0
 scanner.scanInteger(&numberOfOperations)
 for _ in 1 ... numberOfOperations {
 var op = 0
 scanner.scanInteger(&op)
 switch op {
 case 1:
 stack.append(string)
 var arg: NSString?
 scanner.scanString(" ", intoString: nil)
 scanner.scanUpToCharactersFromSet(charset, intoString: &arg)
 string.appendContentsOf(arg as! String)
 case 2:
 stack.append(string)
 var length = 0
 scanner.scanInteger(&length)
 let idx = string.endIndex.advancedBy(-length)
 string.removeRange(idx ..< string.endIndex)
 case 3:
 var pos = 0
 scanner.scanInteger(&pos)
 let idx = string.startIndex.advancedBy(pos - 1)
 print(string[idx])
 case 4:
 string = stack.removeLast()
 default:
 fatalError()
 }
 }
 
 */



