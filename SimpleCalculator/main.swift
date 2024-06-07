//
//  main.swift
//  SimpleCalculator
//
//  Created by Soo Jang on 6/4/24.
//

import Foundation

print(
"""
*********************************************
*                                           *
*                Calculator Lv.4            *
*                                           *
*       띄어쓰기 없이 식을 넣어주세요 ex) 3+5       *
*   프로그램을 종료하고 싶으시다면 stop을 입력해주세요   *
*                                           *
*********************************************
"""
)

let calculator = Calculator(operations: [
    "+" : AddOperation(),
    "-" : SubstractOperation(),
    "*" : MultiplyOperation(),
    "/" : DivideOperation(),
    "%" : ModOperation()
])
while true {
    print("입력: ",terminator: "")
    guard let input = readLine() else
    {
        print("다시 입력해주세요!")
        continue
    }
    if input == "stop" {
        break
    }
    let info = calculator.getInfo(from: input)
    if info.numArr.count != 2 {
        print("다시 입력해주세요!")
        continue
    }
    print(calculator.calc(info: info))
}
