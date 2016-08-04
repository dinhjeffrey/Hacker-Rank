import Foundation
// returns an integer read from a line of standard input
func readInteger() -> Int {
    guard let line = readLine() else { fatalError("cannot read line") }
    guard let i = Int(line) else { fatalError("cannot convert line to integer") }
    return i
}

// return an array of integers from a line of standard input
func readIntegers() -> [Int] {
    guard let line = readLine() else { fatalError("cannot read line") }
    let integers = line.componentsSeparatedByString(" ").map{ Int($0)! }
    return integers
}

func getMaxArea(numBuildings: Int, heightBuildings hist: [Int]) {
    // Create an empty stack. The stack holds indexes of hist[] array
    // The bars stored in stack are always in increasing order of their
    // heights.
    var stack = [Int]()
    
    var maxArea = 0 // Initalize max area
    var top = Int()  // To store top of stack
    var areaWithTop = Int() // To store area with top bar as the smallest bar
    
    
    var index = 0
    // Run through all bars of given histogram
    while index < numBuildings {
       // print("index is \(index)")
        // If this bar is higher than the bar on top stack, push it to stack
        if stack.isEmpty || hist[stack.last!] <= hist[index] {
            stack.append(index)
            index += 1
        }
            
            
            // If this bar is lower than top of stack, then calculate area of rectangle
            // with stack top as the smallest (or minimum height) bar. 'i' is
            // 'right index' for the top and element before top in stack is 'left index'
        else {
            top = stack.last! // store the top index
            
            stack.removeLast()  // pop the top
            
            // Calculate the area with hist[tp] stack as smallest bar
            // stack.last got changed, use stack.last!
            areaWithTop = hist[top] * (stack.isEmpty ? index : index - stack.last! - 1)
            
            // update max area, if needed
            if maxArea < areaWithTop {
                maxArea = areaWithTop
            }
        }
    }
    
    // Now pop the remaining bars from stack and calculate area with every
    // popped bar as the smallest bar
    while stack.isEmpty == false {
        top = stack.last!
        //print("stack is: \(stack)")
        stack.removeLast()
        // stack.last got changed, use stack.last!

        areaWithTop = hist[top] * (stack.isEmpty ? index : index - stack.last! - 1)
        //print("top is: \(top)")
        //print("areaWithTop is: \(areaWithTop)")
        
        if maxArea < areaWithTop {
            maxArea = areaWithTop
        }
    }
    
    print(maxArea)
}

func inputs() {
    let numBuildings = readInteger()
    let heightBuildings = readIntegers()
    getMaxArea(numBuildings, heightBuildings: heightBuildings)
}

inputs()

/*
 
 //Then, on the command line use something like...
 cat input00.txt | swift largest-rectangle.playground/Contents.swift
 
 */



