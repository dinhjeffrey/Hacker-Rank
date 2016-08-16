import Foundation

// returns an integer from one standard line of input
func readInteger() -> Int {
    guard let line = readLine() else { fatalError("cannot read line") }
    guard let int = Int(line) else { fatalError("cannot convert line to int") }
    return int
}

// returns an array of integers from one standard line of input
func readIntegers() -> [Int] {
    guard let line = readLine() else { fatalError("cannot read line") }
    let ints = line.componentsSeparatedByString(" ").map{ Int($0)! }
    return ints
}

func dayStopDying(plantPesticide: [Int]) {
    // holds first value of plantPesticide
    let firstValue = plantPesticide.first
    // start from 1...lastValue
    var plantPesticideAdjusted = Array(plantPesticide[1..<plantPesticide.count])
    var lastDay = [Int]()
    var dayCount = 0
    while lastDay != plantPesticideAdjusted {
        // keeps track of last value being compared to
        lastDay = plantPesticideAdjusted
        var lastValue = firstValue
        plantPesticideAdjusted = plantPesticideAdjusted.filter{
            let temp = lastValue
            lastValue = $0
            return $0 < temp
        }
        dayCount += 1
        print(dayCount)
    }
    let dayAdjusted = dayCount - 1  // because it runs an extra time to check
    if dayAdjusted == 1 {
        print(0) // if days never incremented
    } else {
        print(dayAdjusted)
    }
}

// reads input
func input() {
    let _ = readInteger()
    let plantPesticide = readIntegers()
    dayStopDying(plantPesticide)
}

input()

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift Poisonous-Plants.playground/Contents.swift
 
 */
