import Foundation

// returns line read parsed into [Int]
func readIntegers() -> [Int] {
    return readLine()!.componentsSeparatedByString(" ").map { Int($0)! }
}

// Read  N(number of sequences) and Q(number of queries):
let input = readIntegers()
let (numOfSequences, numOfQueries) = (input[0], input[1])

var lastAns = 0
// Array of `numOfSequences` empty arrays:
var seqList = [[Int]](count: numOfSequences, repeatedValue: [])

// loops through all queries
for _ in 0..<numOfQueries {
    let input = readIntegers()
    // assigning multiple constants in one line
    let (type, x, y) = (input[0], input[1], input[2])
    
    switch type {
    case 1:
        // formula for seqIndex
        let seqIndex = ((x ^ lastAns) % numOfSequences)
        seqList[seqIndex].append(y)
    case 2:
        let seqIndex = ((x ^ lastAns) % numOfSequences)
        // formula for index
        let index = y % seqList[seqIndex].count
        lastAns = seqList[seqIndex][index]
        print(lastAns)
    default: // type should only be 1 or 2
        fatalError("Unexpected query")
    }
}