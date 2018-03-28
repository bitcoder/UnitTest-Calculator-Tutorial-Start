// MARK: Frameworks

import Foundation

// MARK: CalculatorInteractor

class CalculatorInteractor {
    func add(numberOne: Float, to numberTwo: Float) -> Float {
        return numberOne + numberTwo
    }
    
    func subtract(numberOne: Float, from numberTwo: Float) -> Float {
        return numberTwo - numberOne
    }
    
    func multiply(numberOne: Float, by numberTwo: Float) -> Float {
        return numberOne * numberTwo
    }
    
    func dividde(numberOne: Float, by numberTwo: Float) -> Float {
        return numberOne / numberTwo
    }
}
