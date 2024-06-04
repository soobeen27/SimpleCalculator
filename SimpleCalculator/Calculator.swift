//
//  Calculator.swift
//  SimpleCalculator
//
//  Created by Soo Jang on 6/4/24.
//

import Foundation


class Calculator {
    let add = AddOperation()
    let substract = SubstractOperation()
    let multiple = MultiplyOperation()
    let divide = DivideOperation()
    
    func getInfo(from expression: String) -> infoCalc{
        var numArr: [Int] = []
        let oper = ["+","-","*","/","%"]
        
        for sep in oper {
            if expression.contains(sep) {
                numArr = expression.components(separatedBy: sep).map
                {(temp: String) -> Int in
                    guard let num = Int(temp) else { return 0 }
                    return num
                }
                return infoCalc(num: numArr, oper: sep)
            }
        }
        return infoCalc(num: [0,0], oper: "Error")
    }
    
    
    func calc(info: infoCalc) -> Int {
        switch info.oper {
        case "+":
            return add.add(n: info.num[0], n2: info.num[1])
        case "-":
            return substract.substract(n: info.num[0], n2: info.num[1])
        case "*":
            return multiple.multiple(n: info.num[0], n2: info.num[1])
        case "/":
            return divide.divide(n: info.num[0], n2: info.num[1])
        case "%":
            return divide.remain(n: info.num[0], n2: info.num[1])
        default:
            print("+ - * / 중에 입력해주세요")
            return 0
        }
    }
}

class AddOperation {
    func add(n: Int, n2: Int) -> Int{
        return n + n2
    }
}
class SubstractOperation {
    func substract(n: Int, n2: Int) -> Int{
        return n - n2
    }
}
class MultiplyOperation {
    func multiple(n: Int, n2: Int) -> Int{
        return n * n2
    }
}
class DivideOperation {
    func divide(n: Int, n2: Int) -> Int{
        return n / n2
    }
    func remain(n: Int, n2: Int) -> Int {
        return n % n2
    }
}
struct infoCalc {
    let num: [Int]
    let oper: String
}
