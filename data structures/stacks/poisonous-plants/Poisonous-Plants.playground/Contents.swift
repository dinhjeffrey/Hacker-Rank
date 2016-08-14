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
    var plantPesticideAdjusted = plantPesticide[1..<plantPesticide.count]
    var lastDay = false
    while lastDay == false {
        // keeps track of last value being compared to
        var lastValue = firstValue
        let alivePlants = plantPesticideAdjusted.filter{
//            if $0 > lastValue {
//                lastValue = $0
//            }
//            return $0 > lastValue
        }
    }
}



// reads input
func input() {
    let _ = readInteger()
    let plantPesticide = readIntegers()
    dayStopDying(plantPesticide)
}

