// number of elements
var n = Int(readLine()!)!

// read array
var arr = readLine()!.characters.split(" ").map(String.init)

// prints elements in array backwards on the same line with a space inbetween
for i in arr.reverse() {
    print(i, terminator: " ")
}