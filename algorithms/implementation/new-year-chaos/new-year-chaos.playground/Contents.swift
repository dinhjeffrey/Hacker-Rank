/*              (✿ ♥‿♥)                 ╘[◉﹃◉]╕                      ᕙ(⇀‸↼‶)ᕗ
 Ｏ(≧▽≦)Ｏ	              ❤ New Year Chaos ❤                       ★~(◡﹏◕✿)
 (ﾉ◕ヮ◕)ﾉ*:･ﾟ✧            (づ￣ ³￣)づ                    (づ｡◕‿‿◕｡)づ
 */

var testCases = Int(readLine()!)!

for _ in (0..<testCases) {
    var length = Int(readLine()!)!
    var arr = readLine()!.characters.split(" ").map{Int(String($0))!}
    
    var index = 0, cnt = 0, sorted = true, chaotic = false
    
    for i in (0..<length) {
        if arr[i] - i > 3 {
            chaotic = true
            break
        }
    }
    
    guard !chaotic else { print("Too chaotic") ; continue }
    
    while index < length - 1 { // i < 4
        guard arr[index] > arr[index+1] else { index += 1; continue }
        var tmp = arr[index]
        arr[index] = arr[index+1]
        arr[index+1] = tmp // switch places to sort it
        cnt += 1
        if index != 0 {
            index -= 1
        }
    }
    print(cnt)
}

/*
 cat input00.txt | swift new-year-chaos.playground/Contents.swift
 */

