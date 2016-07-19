//: Playground - noun: a place where people can play

import Foundation

private func collatzLength(number: Int, inout cache: [Int]) -> Int {
    var steps = 0
    var n = number
    
    while n >= number { // the caching array is filled sequentially
        if n % 2 == 0 {
            n /= 2
        } else {
            n = (n * 3 + 1) / 2
            steps += 1
        }
        steps += 1
    }
    steps += cache[n]
    cache[number] = steps
    return steps
}

func longestCollatzSequence(maxNumber: Int) -> (number: Int, steps: Int) {
    var collatzSequence = (number: 0, steps: 0)
    var cache: [Int] = [Int](count: maxNumber, repeatedValue: 0)
    cache[1] = 1
    
    for number in 2..<maxNumber {
        let steps = collatzLength(number, cache: &cache)
        if steps > collatzSequence.steps {
            collatzSequence = (number, steps)
        }
    }
    return collatzSequence
}


func euler14() {
    
    let (number, _) = longestCollatzSequence(13)
    
    print("longestCollatzSequence(13) = \(number + 1)") // includes 1
}

func printTimeElapsedWhenRunningCode(operation:() -> ()) {
    let startTime = CFAbsoluteTimeGetCurrent()
    operation()
    let timeElapsed = CFAbsoluteTimeGetCurrent() - startTime
    print("Time elapsed : \(timeElapsed) s")
}

printTimeElapsedWhenRunningCode(euler14)
