// MARK: Frameworks

import UIKit

// MARK: OperationType Enum

enum OperationType {
    case addition
    case subtraction
    case multiplication
    case division
}

// MARK: MainViewController

class MainViewController: UIViewController {
    
    // MARK: Outlets
    
    @IBOutlet var displayView: UIView!
    @IBOutlet var displayViewLabel: UILabel!
    @IBOutlet var operationView: UIView!
    @IBOutlet var numberView: UIView!

    // MARK: Variables
    
    var calculatorInteractor: CalculatorInteractor!
    var currentOperation: OperationType?
    
    var currentNumber: Float? {
        didSet {
            displayNumber = currentNumber ?? 0
        }
    }
    
    var displayNumber: Float = 0 {
        didSet {
            displayViewLabel.text = "\(displayNumber)"
        }
    }
    
    // MARK: View Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        calculatorInteractor = CalculatorInteractor()
    }
    
    // MARK: Action Methods
    
    @IBAction func clear(_ sender: Any?) {
        currentNumber = nil
        currentOperation = nil
    }
    
    @IBAction func number(_ sender: Any?) {
        guard let button = sender as? UIButton,
              let buttonText = button.titleLabel?.text,
              let buttonNumber = Float(buttonText) else {
            return
        }
        
        if let currentOperation = currentOperation {
            switch currentOperation {
            case .addition:
                displayNumber = calculatorInteractor.add(numberOne: displayNumber, to: buttonNumber)
            case .subtraction:
                displayNumber = calculatorInteractor.subtract(numberOne: buttonNumber, from: displayNumber)
            case .multiplication:
                displayNumber = calculatorInteractor.multiply(numberOne: displayNumber, by: buttonNumber)
            case .division:
                displayNumber = calculatorInteractor.divide(numberOne: buttonNumber, by: displayNumber)
            }
        } else {
            currentNumber = buttonNumber
        }
    }
    
    @IBAction func operation(_ sender: Any?) {
        guard let button = sender as? UIButton,
              let buttonTitle = button.titleLabel?.text else {
            return
        }
        
        setCurrentOperation(for: buttonTitle)
    }
    
    // MARK: Helper Methods
    
    private func setCurrentOperation(for buttonTitle: String) {
        switch buttonTitle {
        case "÷":
            currentOperation = .division
        case "*":
            currentOperation = .multiplication
        case "-":
            currentOperation = .subtraction
        case "+":
            currentOperation = .addition
        default:
            currentOperation = nil
        }
    }
}

