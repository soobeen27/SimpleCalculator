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

    func getInfo(from expression: String) -> (numArr: [Int], oper: String){
        let oper = ["+","-","*","/","%"]
        for sep in oper {
            if expression.contains(sep) {
                let numArr = expression.components(separatedBy: sep).map
                {(temp: String) -> Int in
                    guard let num = Int(temp) else { return 0 }
                    return num
                }
                return (numArr, sep)
            }
        }
        return ([0,0], "Error")
    }
    
    
    func calc(info: (numArr: [Int], oper: String)) -> Int {
        switch info.oper {
        case "+":
            return add.operation(n: info.numArr[0], n2: info.numArr[1])
        case "-":
            return substract.operation(n: info.numArr[0], n2: info.numArr[1])
        case "*":
            return multiple.operation(n: info.numArr[0], n2: info.numArr[1])
        case "/":
            return divide.operation(n: info.numArr[0], n2: info.numArr[1])
        case "%":
            return divide.remain(n: info.numArr[0], n2: info.numArr[1])
        default:
            print("+, -, *, /, % 중에 입력해주세요")
            return 0
        }
    }
}

class AddOperation: AbstractOperation {
    override func operation(n: Int, n2: Int) -> Int {
        return n + n2
    }
}
class SubstractOperation: AbstractOperation {
    override func operation(n: Int, n2: Int) -> Int {
        return n - n2
    }
}
class MultiplyOperation: AbstractOperation {
    override func operation(n: Int, n2: Int) -> Int {
        return n * n2
    }
}
class DivideOperation: AbstractOperation {
    override func operation(n: Int, n2: Int) -> Int {
        return n / n2
    }
    func remain(n: Int, n2: Int) -> Int {
        return n % n2
    }
}

class AbstractOperation {
    func operation(n: Int, n2: Int) -> Int {
        return 0
    }
}
