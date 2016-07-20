//: Playground - noun: a place where people can play

import Foundation

// My Previous Solution
//private func longestCollatz(range: Int) -> Int {
//    var longestChain = 1
//    var alreadyCalculated = Set<Int>()
//    for i in 1...range {
//        var currentNumber = i
//        var chainCount = 1
//        while currentNumber != 1 {
//            guard alreadyCalculated.indexOf(currentNumber) == nil else { break }
//            alreadyCalculated.insert(currentNumber)
//            if currentNumber % 2 == 0 {
//                currentNumber /= 2
//                chainCount += 1
//            } else {
//                currentNumber = currentNumber * 3 + 1
//                currentNumber /= 2
//                chainCount += 2
//            }
//            print(currentNumber)
//        }
//        if chainCount > longestChain {
//            longestChain = chainCount
//        }
//        //print(alreadyCalculated)
//    }
//    return longestChain
//}

// returns the amount of steps that makes it a collatz sequence (maxNum -> 1). modifies an inout cache array that holds index corresponding to their collatz length
func collatzLength(number: Int, inout cache: [Int]) -> Int {
    var steps = 0
    var n = number
    while n >= number { // why n >= number? anything below we already solved and added to cache array
        
        if n % 2 == 0 {
            n /= 2
        } else {
            n = (n * 3 + 1) / 2
            steps += 1
        }
        steps += 1
        
    }
    steps += cache[n] // when exiting the loop because n < number, we add the value of cache[index]. cache[index] contains the number of steps at each index 0,1... maxNumber-1
    cache[number] = steps // cache[index] = steps, so cache[2] = 2. cache[3] = 6.
    
    return steps
}

// solves which number has the longest collatz sequence given a maxNumber. returns the format in tuple format of the number and amount of steps for it's collatz sequence. create an inout cache array that gets modified in the collatzLength
func longestCollatzSequence(maxNumber: Int) -> (number: Int, steps: Int) {
    var collatzSequence = (number:0, steps:0)
    var cache: [Int] = [Int](count: maxNumber, repeatedValue: 0)
    cache[1] = 1 // [0, 1, ... maxNumber]. start from 2..< maxNumber
    
    for number in 2 ..< maxNumber {
        let steps = collatzLength(number, cache: &cache)
        if steps > collatzSequence.steps {
            collatzSequence = (number, steps)
        }
    }
    return collatzSequence
}

// executes the function and prints out values in tuple format
func euler14() {
    let (number, steps) = longestCollatzSequence(13)
    print("number is \(number) and steps is \(steps)")
}

// keeps track of time
func printTimeElapsedWhenRunningCode(operation:() -> ()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time elapsed : \(timeElapsed) s")
}

printTimeElapsedWhenRunningCode(euler14)
