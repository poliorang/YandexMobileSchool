//
//  main.swift
//  yandexSchool
//
//  Created by poliorang on 21.06.2022.
//

var maxTime: Int = 0
var current: Int = 0
var previous: Int = 0
var i: Int = 0
var result: Int = 0


func input1() -> Int {
    if let input = readLine() {
        if let count = Int(input) {
            return count
        }
    }
    return 0
}

func input2(count: Int) -> String {
    let line = readLine()! as String
    if line.count != count {
        return ""
    }
    return line
}

func input3() {
    readLine()?.split(separator: " ").map({
        let x = Int($0)! as Int
        current = x - previous
        if current >= maxTime {
            maxTime = current
            result = i
        }
        previous = x
        i += 1
    })
}


let count = input1()
let line = input2(count: count)
input3()
let index = line.index(line.startIndex, offsetBy: result)
print(line[index])
