// MARK: Frameworks

import XCTest

// MARK: CalculatorInteractorTests

class CalculatorInteractorTests: XCTestCase {
    
    // MARK: Variables
    
    var calculatorInteractor: CalculatorInteractor!

    // MARK: Setup Methods

    override func setUp() {
        super.setUp()

        calculatorInteractor = CalculatorInteractor()
    }
    
    // MARK: Addition Tests

    func testAddition() {
        let numberOne: Float = 4
        let numberTwo: Float = 9
        
        let result = calculatorInteractor.add(numberOne: numberOne, to: numberTwo)

        XCTAssertEqual(result, 13)
    }
    
    func testAdditionNegative() {
        let numberOne: Float = -3
        let numberTwo: Float = -6
        
        let result = calculatorInteractor.add(numberOne: numberOne, to: numberTwo)
        
        XCTAssertEqual(result, -9)
    }
    
    // MARK: Subtraction Tests
    
    func testSubtraction() {
        let numberOne: Float = 9
        let numberTwo: Float = 4
        
        let result = calculatorInteractor.subtract(numberOne: numberOne, from: numberTwo)
        
        XCTAssertEqual(result, -5)
    }
    
    func testSubtractionNegative() {
        let numberOne: Float = -6
        let numberTwo: Float = -12
        
        let result = calculatorInteractor.subtract(numberOne: numberOne, from: numberTwo)
        
        XCTAssertEqual(result, -6)
    }
    
    // MARK: Multiplication Tests
    
    func testMultiplication() {
        let numberOne: Float = 9
        let numberTwo: Float = 4
        
        let result = calculatorInteractor.multiply(numberOne: numberOne, by: numberTwo)
        
        XCTAssertEqual(result, 36)
    }
    
    func testMultiplicationNegative() {
        let numberOne: Float = -2
        let numberTwo: Float = -12
        
        let result = calculatorInteractor.multiply(numberOne: numberOne, by: numberTwo)
        
        XCTAssertEqual(result, 24)
    }
    
    // MARK: Division Tests
    
    func testDivision() {
        let numberOne: Float = 28
        let numberTwo: Float = 2
        
        let result = calculatorInteractor.divide(numberOne: numberOne, by: numberTwo)
        
        XCTAssertEqual(result, 14)
    }
    
    func testDivisionNegative() {
        let numberOne: Float = -9
        let numberTwo: Float = -3
        
        let result = calculatorInteractor.divide(numberOne: numberOne, by: numberTwo)
        
        XCTAssertEqual(result, 3)
    }
}
