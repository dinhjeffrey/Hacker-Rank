//: Playground - noun: a place where people can play

import Foundation

var inputAsArray = [Int]()
for _ in 0...5 {
    inputAsArray += readLine()!.componentsSeparatedByString(" ").map{ Int($0)! }
}
//var inputAsArray = [
//    1, 1, 1, 0, 0, 0,
//    0, 1, 0, 0, 0, 0,
//    1, 1, 1, 0, 0, 0,
//    0, 9, 2, -4, -4, 0,
//    0, 0, 0, -2, 0, 0,
//    0, 0, -1, -2, -4, 0
//]

// method creates all possible "hourglasses" and returns a nested array of hourglasses
typealias hourglass = [Int]
private func hourGlasses(input: [Int]) -> [hourglass] {
    var hourglasses = [hourglass]() // initializes hourglass to hold array of hourglass
    for index in 0..<22 { // there are 36 indexes (6x6) but we +14 in the loop below when creating the hourglass so we only need to go up to 24. We can't make hourglass with 23 and 24, so we go up to 22
        guard [4,5,10,11,16,17].indexOf(index) == nil else {continue} // continue to next iteration because we can't create hourglass with the last 2 indexes from the right wall
        hourglasses.append([ // creates the hourglass array
                input[index], input[index+1], input[index+2],
                                        input[index+7],
            input[index+12], input[index+13], input[index+14],
            ])
    }
    return hourglasses
}

// method takes in array of input and sends it to hourGlasses to make a nested array. Then it finds the largest sum by using reduce over the nested array
private func maxHourglassSum(input: [Int]) -> Int {
    let hourglasses: [hourglass] = hourGlasses(input)
    // reduce the nested arrays to get sum in each. then compare that sum to maxSum
    var maxSum = Int?() // set to optional instead of 0 because all numbers in input can be negative
    for singleHourglass in hourglasses {
        let singleHourglassSum = singleHourglass.reduce(0, combine: +) // reduce adds up sum for a single hourglass
        if maxSum == nil || singleHourglassSum > maxSum {
            maxSum = singleHourglassSum
        }
    }
    return maxSum!
}

print(maxHourglassSum(inputAsArray))
