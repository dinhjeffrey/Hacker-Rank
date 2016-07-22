import Foundation

// initialize 2d array with empty arrays inside
var input = [[Int]](count: 6, repeatedValue: [])
for index in 0..<6 {
    let row = readLine()!.componentsSeparatedByString(" ").map{ Int($0)! }
    // set the nested arrays
    input[index] = row
}
let numRows = 6
let numCols = 6

// method calculates the hourglass sum
func hourGlassSum(input: [[Int]], atRow row: Int, atCol col: Int) -> Int {
    var sum = input[row][col] + input[row][col + 1] + input[row][col + 2]
    sum += input[row + 1][col + 1]
    sum += input[row + 2][col] + input[row + 2][col + 1] + input[row + 1][col + 2]
    return sum
}

// method finds out maximum hourglass sum
func maxHourglassSum(input: [[Int]]) -> Int {
    var maxSum = -100 // Any initial value < -9*7 = -63
    for row in 0 ..< numRows - 2 {
        for col in 0 ..< numCols - 2 {
            let sum = hourGlassSum(input, atRow: row, atCol: col)
            if sum > maxSum {
                maxSum = sum
            }
        }
    }
    return maxSum
}

print(maxHourglassSum(input))