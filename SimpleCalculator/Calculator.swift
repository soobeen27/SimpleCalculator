//
//  Calculator.swift
//  SimpleCalculator
//
//  Created by Soo Jang on 6/4/24.
//

import Foundation

class Calculator {
    func calulate(firstNum: Int, oper: String, secondNum: Int) -> Int {
        switch oper {
        case "+":
            return firstNum + secondNum
        case "-":
            return firstNum - secondNum
        case "*":
            return firstNum * secondNum
        case "/":
            return firstNum / secondNum
        default:
            print("+ - * / 중에 입력해주세요")
            return 0
        }
    }
}
