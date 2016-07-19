//: Playground - noun: a place where people can play

import QuartzCore


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
