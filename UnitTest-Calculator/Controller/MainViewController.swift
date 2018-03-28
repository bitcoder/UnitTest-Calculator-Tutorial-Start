// MARK: Frameworks

import UIKit

// MARK: MainViewController

class MainViewController: UIViewController {

    // MARK: Enum
    
    enum Operation {
        case addition
        case subtraction
        case multiplication
        case division
        case equals
    }
    
    // MARK: Outlets
    
    @IBOutlet var displayView: UIView!
    @IBOutlet var displayViewLabel: UILabel!
    @IBOutlet var operationView: UIView!
    @IBOutlet var numberView: UIView!

    // MARK: Variables
    
    var calculatorInteractor: CalculatorInteractor!
    var currentOperation: Operation?
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
    
    @IBAction func number(_ sender: Any?) {
        guard let button = sender as? UIButton,
              let buttonText = button.titleLabel?.text,
              let buttonNumber = Float(buttonText) else {
            return
        }
        
        if currentOperation == nil {
            displayNumber = buttonNumber
        } else {
            
        }
    }
    
    @IBAction func operation(_ sender: Any?) {
        guard let button = sender as? UIButton,
              let buttonText = button.titleLabel?.text else {
            return
        }
        
        switch buttonText {
        case "/":
            currentOperation = .division
        case "*":
            currentOperation = .multiplication
        case "-":
            currentOperation = .subtraction
        case "+":
            currentOperation = .addition
        case "=":
            currentOperation = .equals
        default:
            currentOperation = nil
        }
    }
}

