import UIKit

// 추상화
protocol Operation {
    func result(num1: Double, num2: Double) -> Double
}

// 덧셈 연산
class AddOperation: Operation {
    func result(num1: Double, num2: Double) -> Double {
        let addResult = num1 + num2
        return addResult
    }
}

// 뺄셈 연산
class SubstractOperation: Operation {
    func result(num1: Double, num2: Double) -> Double {
        let minusResult = num1 - num2
        return minusResult
    }
}

// 곱셈 연산
class MultiplyOperation: Operation {
    func result(num1: Double, num2: Double) -> Double {
        let multiplyResult = num1 * num2
        return multiplyResult
    }
}

// 나눗셈 연산
class DivisionOperation: Operation {
    func result(num1: Double, num2: Double) -> Double {
        let divisionResult = num1 / num2
        return divisionResult
    }
}

// 나머지 연산
// 예외처리로 if문 사용함
class ModulusOperation {
    func result(num1: Double, num2: Double) -> Double {
        if num2 == 0 {
            print("0은 나머지를 구할 수 없습니다.")
        }
        let modulusResult = num1.truncatingRemainder(dividingBy: num2)
        //타입이 Double이라 %대신 truncatingRemainder사용.
        return modulusResult
    }
}

// 위의 연산들을 사용한 계산기
class Calculator {
    let addOperation = AddOperation()
    let substractOperation = SubstractOperation()
    let multiplyOperation = MultiplyOperation()
    let divisionOperation = DivisionOperation()
    let modulusOperation = ModulusOperation()
    
    func add(num1: Double, num2: Double) -> Double {
        return addOperation.result(num1: num1, num2: num2)
    }
    
    func minus(num1: Double, num2: Double) -> Double {
        return substractOperation.result(num1: num1, num2: num2)
    }
    
    func multiply(num1: Double, num2: Double) -> Double {
        return multiplyOperation.result(num1: num1, num2: num2)
    }
    
    func division(num1: Double, num2: Double) -> Double {
        return divisionOperation.result(num1: num1, num2: num2)
    }
    
    func modulus(num1: Double, num2: Double) -> Double {
        return modulusOperation.result(num1: num1, num2: num2)
    }
}

let calculator = Calculator()

print(calculator.add(num1: 10, num2: 20))
print(calculator.minus(num1: 10, num2: 20))
print(calculator.multiply(num1: 10, num2: 20))
print(calculator.division(num1: 20, num2: 10))
print(calculator.modulus(num1: 10, num2: 7))






