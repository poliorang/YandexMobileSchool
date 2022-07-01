//
//  main.swift
//  yandexSchoolTask4
//
//  Created by poliorang on 23.06.2022.
//


var minNegative: Int = 0
var maxNegative: Int = Int.min
var minPositive: Int = Int.max
var maxPositive: Int = 0
var countOfNegative: Int = 0
var countOfNonNegative: Int = 0
var flag: Int = 0

func input1() -> Int {
    if let input = readLine() {
        if let count = Int(input) {
            return count
        }
    }
    return 0
}


func lessZero(elem: Int) {
    countOfNegative += 1
    
    if elem < minNegative {
        minNegative = elem
    }
    
    if elem > maxNegative {
        maxNegative = elem
    }
}


func greaterZero(elem: Int) {
    countOfNonNegative += 1
    
    if elem < minPositive {
        minPositive = elem
    }
    
    if elem > maxPositive {
        maxPositive = elem
    }
}


func input2() {
    readLine()?.split(separator: " ").map({
        if flag >= count {
            return
        }
        let elem = Int($0)! as Int
        if elem < 0 {
            lessZero(elem: elem)
        }
        else {
            greaterZero(elem: elem)
        }
        flag += 1
    })
}


func getResult() -> Int {
    var result: Int = 0
    
    if countOfNegative == 0 {
        result = minPositive
    }
    else {
        if countOfNonNegative == 0 {
            if countOfNegative % 2 == 1 { result = maxNegative }
            else { result = minNegative }
        }
        else {
            if countOfNegative % 2 == 1 {
                result = maxNegative
            }
            else {
                result = minPositive
            }
        }
    }
    
    return result
}


let count = input1()
input2()
let result = getResult()
print(result)
