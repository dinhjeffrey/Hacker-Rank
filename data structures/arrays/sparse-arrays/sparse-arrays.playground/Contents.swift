import Foundation

// Returns an integer read from one line of input
func readInteger() -> Int {
    guard let line = readLine() else {
        fatalError("Unexpected end of input")
    }
    guard let i = Int(line) else {
        fatalError("Invalid integer in input")
    }
    return i
}
// Returns a string from one line of input
func readString() -> String {
    guard let line = readLine() else {
        fatalError("Unexpected end of input")
    }
    return line
}

let numOfStrings = readInteger()
// creates an array looping a certain amount of times with values in array returned from func readString()
let strings = (0..<numOfStrings).map {
    _ in readString()
}

let numOfQueries = readInteger()
for _ in 0..<numOfQueries {
    let query = readString()
    // determine the count of strings that matchings the query
    let matchingCount = strings.reduce(0) { (accum, str) in
        accum + (str == query ? 1 : 0)
    }
    print(matchingCount)
}
