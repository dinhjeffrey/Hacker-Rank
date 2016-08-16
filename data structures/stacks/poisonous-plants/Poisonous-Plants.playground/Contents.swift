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
    var s = [Int](count: plantPesticide.count, repeatedValue: 0)
    s[0] = 0
    var k = [Int](count: plantPesticide.count, repeatedValue: 0)
    k[0] = -1
    
    // stack contains last seen plant index
    var stack = [Int]()
    
    // the first index has already been seen
    stack.append(0)
    
    // index of current plant
    var i = 1
    let n = plantPesticide.count
    while i<n {
        // the generation plantPesticide[i] survived to
        var generation = 0
        // while last-seen plants are not killers of the current plant plantPesiticide[i]
        while !stack.isEmpty && plantPesticide[stack.last!] >= plantPesticide[i] {
            generation = max(generation, s[stack.last!])
            stack.popLast()
        }
        if !stack.isEmpty && s[stack.last!] > 0 && generation >= s[stack.last!] {
            // if the potential killer of this plant died at an earlier generation
            // we clear them off the stack
            while !stack.isEmpty && s[stack.last!] > 0 && generation >= s[stack.last!] {
                stack.popLast()
            }
        }
        s[i] = stack.isEmpty ? 0 : generation + 1
        k[i] = stack.isEmpty ? -1 : stack.last!
        stack.append(i)
        i += 1
    }
    print(s.maxElement()!)
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
