//: Playground - noun: a place where people can play

import Foundation

// reads input for N(number of sequences) and Q(number of queries)
let input = readLine()!.componentsSeparatedByString(" ").map { Int($0)! }
//let input = [2, 5]
let numOfSequences = input[0]
let numOfQueries = input[1]
var lastAns = 0
var seqDictionary = [Int: [Int]]()

// loop through each query
for _ in 0..<numOfQueries {
    let query = readLine()!.componentsSeparatedByString(" ").map { Int($0)! }
    //let query = [1, 0, 5]
    switch query[0] {
    case 1:
        let seqDictionaryIndex = query[1] ^ lastAns % numOfSequences
        guard seqDictionary[seqDictionaryIndex] != nil else { seqDictionary[seqDictionaryIndex] = [query[2]] ; continue }
        seqDictionary[seqDictionaryIndex]?.append(query[2])
    case 2:
        let seqDictionaryIndex = query[1] ^ lastAns % numOfSequences
        lastAns = seqDictionary[seqDictionaryIndex]![query[2]]
        print(lastAns)
    default: break
    }
}

