//: Playground - noun: a place where people can play

// Start with an integer n. If n is even, divide by 2. If n is odd, multiply by 3 and add 1. Repeat this process with the new value of n, terminating when n = 1.

// Enter your code here
var n = Int(readLine()!)!

var count = 1

while n != 1 {
    if n % 2 == 0 {
        n /= 2
        count += 1
    } else {
        n = n * 3 + 1
        n /= 2
        count += 2
    }
}

print(count)

