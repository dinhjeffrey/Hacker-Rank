//: Playground - noun: a place where people can play

import UIKit

var arr = [1,2,3,4,4]
arr.removeFirst()
arr
let maxElement = arr.maxElement()
let countFirstMax = arr.reduce(0) { ( acc, num) -> Int in
    var acc = acc
    if num == maxElement {
        acc += 1
    }
    return acc
}

countFirstMax

arr.removeAtIndex(arr.indexOf(maxElement!)!)




















