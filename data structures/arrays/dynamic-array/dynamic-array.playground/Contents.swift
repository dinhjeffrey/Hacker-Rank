import Foundation

// reads input for N(number of sequences) and Q(number of queries)
let input = readLine()!.componentsSeparatedByString(" ").map { Int($0)! }
let numOfSequences = input[0]
let numOfQueries = input[1]
var lastAns = 0
var seqDictionary = [Int: [Int]]()

// loop through numOfQueries
for _ in 0..<numOfQueries {
    // each query is given in format [1, x, y] or [2, x, y]
    let query = readLine()!.componentsSeparatedByString(" ").map { Int($0)! }
    // check to see if query[0] is 1 or 2
    switch query[0] {
    case 1:
        // formula for seqDictionaryIndex
        // ^ is the XOR operator
        let seqDictionaryIndex = ((query[1] ^ lastAns) % numOfSequences)
        // since we initalized an empty dictionary, we gotta set the first key to a value to start the array so we can start appending
        guard seqDictionary[seqDictionaryIndex] != nil else { seqDictionary[seqDictionaryIndex] = [query[2]] ; continue }
        seqDictionary[seqDictionaryIndex]?.append(query[2])
    case 2:
        let seqDictionaryIndex = ((query[1] ^ lastAns) % numOfSequences)
        // calculate the size of the particular sequence in seqDictionary
        let size = seqDictionary[seqDictionaryIndex]?.count
        // formula for finding index in particular sequence in seqDictionary
        let index = query[2] % size!
        // set last answer to that element at the index calculated above
        lastAns = seqDictionary[seqDictionaryIndex]![index]
        print(lastAns)
    default: break
    }
}

//Then, on the command line use something like...
// cat input07.txt | swift dynamic-array.playground/Contents.swift

