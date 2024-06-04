//
//  main.swift
//  SimpleCalculator
//
//  Created by Soo Jang on 6/4/24.
//

import Foundation

print(
"""
***************************
*                         *
*      Calculator Lv.1    *
*                         *
***************************
"""
)

let calculator = Calculator()

calc()
func calc() {
    print("첫번째 숫자를 입력해주세요:")
    guard let firstNum = readLine() else { return }
    print("수식을 입력해주세요 ex(+,-,*,/):")
    guard let oper = readLine() else { return }
    print("두번째 숫자를 입력해주세요:")
    guard let secondNum = readLine() else { return }
    let sum = calculator.calulate(firstNum: Int(firstNum)!, oper: oper, secondNum: Int(secondNum)!)
    print("정답은:\(sum)")
}

