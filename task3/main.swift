//
//  main.swift
//  yandexSchoolTask3
//
//  Created by poliorang on 23.06.2022.
//

var profitArray = [Int]()
var minPrice: Int = Int.max
var profit: Int = 0
var flag: Int = 0

func input1() -> Int {
    
    if let input = readLine() {
        if let count = Int(input) {
            return count
        }
    }
    return 0
}


func input2() {
    readLine()?.split(separator: " ").map({
        let currentPrice = Int($0)! as Int
        if flag >= count {
            return
        }
        if flag == 0 {
            minPrice = currentPrice
            if count == 1 {
                profit = currentPrice
            }
        }
        else {
            if currentPrice >= minPrice {
                profit = currentPrice - minPrice
            }
            else {
                minPrice = currentPrice
                profit = 0
            }
            profitArray.append(profit)
        }
        flag += 1
    })
    profitArray.append(profit)
}


let count = input1()
input2()
print(profitArray.max()! as Int)

