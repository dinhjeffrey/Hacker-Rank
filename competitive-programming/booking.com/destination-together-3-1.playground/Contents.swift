import Foundation

func readIntegers() -> [Int] {
    guard let line = readLine()?.componentsSeparatedByString(" ").map({Int($0)!}) else { fatalError("unable to read line") }

    return line
}

func destination() {
    let input = readIntegers()
    let (n, m, c) = (input[0], input[1], input[2])
    let johnUnique = n  - c
    let ziziUnique = m - c
    let collectiveUnique = johnUnique + ziziUnique + c
    let total = factorial(collectiveUnique) + n + m + c
    print(total)
}

func factorial(num: Int) -> Int {
    guard num > 1 else {return 1}
    let newNum = num - 1
    return num * factorial(newNum)
}

destination()