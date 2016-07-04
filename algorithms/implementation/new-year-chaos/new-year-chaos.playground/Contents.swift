// Enter your code here
import Foundation

let numTestCases: Int = Int(readLine()!)!
for testCase in 1...numTestCases {
    var tooChaotic = false
    var count = 0
    let numPeople: Int = Int(readLine()!)!
    let finalPosition: [Int] = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! }
    for (index, element) in finalPosition.enumerate().reverse() {
        guard (element >= index - 1) && (element <= index + 3) else { tooChaotic = true ; print("Too chaotic") ; break }
        if element != index + 1 {
            if element == index || element == index + 2 {
                count += 1
            } else if element == index - 1 || element == index + 3 {
                count += 2
            }
        } else { // element == index + 1
            guard index < finalPosition.count - 1 || index == 0 else { continue }
            if (finalPosition[index-1] == element + 1) && (finalPosition[index+1] == element - 1) {
                count += 2
            }
        }
    }
    if tooChaotic == false {
        print(count/2)
    }
}

/*
 cat input01.txt | swift new-year-chaos.playground/Contents.swift
 */