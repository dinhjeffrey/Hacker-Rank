//: Playground - noun: a place where people can play

import QuartzCore


//private func longestCollatz(range: Int) -> Int {
//    var longestChain = 1
//    for i in 1...range {
//        var currentNumber = i
//        var chainCount = 1
//        while currentNumber != 1 {
//            if currentNumber % 2 == 0 {
//                currentNumber /= 2
//                chainCount += 1
//            } else {
//                currentNumber = currentNumber * 3 + 1
//                currentNumber /= 2
//                chainCount += 2
//            }
//        }
//        if chainCount > longestChain {
//            longestChain = chainCount
//        }
//    }
//    return longestChain
//}

// longestCollatz(999_999)




func executionTimeInterval(block: () -> ()) -> CFTimeInterval {
    let start = CACurrentMediaTime()
    block();
    let end = CACurrentMediaTime()
    return end - start
}


// DEMO (paste all this into a playground)

// Non-memoized Fibonacci generator
func fib(n: Int) -> Int {
    assert(n >= 0)
    switch n {
    case 0, 1: return 1
    default:   return fib(n-1) + fib(n-2)
    }
}

let fib8 = executionTimeInterval {
    let x = fib(8)
    print("fib(8) = \(x)")
}

let fib10 = executionTimeInterval {
    let x = fib(10)
    print("fib(10) = \(x)")
}

let fib12 = executionTimeInterval {
    let x = fib(12)
    print("fib(12) = \(x)")
}

fib(4)
