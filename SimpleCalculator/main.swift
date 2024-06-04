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
//func calc() {
//    print("첫번째 숫자를 입력해주세요:")
//    guard let firstNum = readLine() else { return }
//    print("수식을 입력해주세요 ex(+,-,*,/,%):")
//    guard let oper = readLine() else { return }
//    print("두번째 숫자를 입력해주세요:")
//    guard let secondNum = readLine() else { return }
//    let sum = calculator.calulate(firstNum: Int(firstNum)!, oper: oper, secondNum: Int(secondNum)!)
//    print("정답은:\(sum)")
//}

func calc() {
    while true {
        print("첫번째 숫자를 입력해주세요:", terminator: "")
        guard let firstLine = readLine() else { return }
        guard let firstNum = Int(firstLine) else
        {
            print("다시 입력해주세요")
            continue
        }
        print("수식을 입력해주세요 ex(+,-,*,/,%):", terminator: "")
        guard let seconLine = readLine() else { return }
        if seconLine != "+" && seconLine != "-" && seconLine != "*" && seconLine != "/" && seconLine != "%" {
            print("다시 입력해주세요")
            continue
        }
        print("두번째 숫자를 입력해주세요:", terminator: "")
        guard let thirdLine = readLine() else { return }
        guard let thirdNum = Int(thirdLine) else
        {
            print("다시 입력해주세요")
            continue
        }
        let sum = calculator.calulate(firstNum: firstNum, oper: seconLine, secondNum: thirdNum)
        print("정답은:\(sum)")
        return
    }
}



