/*              (✿ ♥‿♥)                 ╘[◉﹃◉]╕                      ᕙ(⇀‸↼‶)ᕗ
 Ｏ(≧▽≦)Ｏ	              ❤ Amoria ❤                       ★~(◡﹏◕✿)
 (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧            (づ￣ ³￣)づ                    (づ｡◕‿‿◕｡)づ
 */
import Foundation

// Maximum Element

// returns an integer from a line of standard input
func readInteger() -> Int {
    guard let line = readLine() else { fatalError("unable to read line") }
    guard let i = Int(line) else { fatalError("unable to read integer") }
    return i
}

// returns an array of integers from a line of standard input
func readIntegers() -> [Int] {
    guard let line = readLine() else { fatalError("unable to read line") }
    let integers = line.componentsSeparatedByString(" ").map{ Int($0)! }
    return integers
}

// creates a stack
var stack = [Int]()

// possible types
enum Type: Int {
    case one = 1, two, three
}

// performs operations on stack depending on input
func maxElement(input: [Int]) {
    guard let type = Type(rawValue: input[0]) else { fatalError("unknown type found") }
    switch type {
    case .one:
        let element = input[1]
        stack.append(element)
    case .two:
        stack.removeLast()
    case .three:
        guard let maxElement = stack.maxElement() else { fatalError("stack is empty") }
        print(maxElement)
    }
}

// reads inputs and calls maxElement
func inputs() {
    let numQueries = readInteger()
    for _ in 0..<numQueries {
        let input = readIntegers()
        maxElement(input)
    }
}

inputs()

















