//
//  ViewController.swift
//  RPNCalc
//
//  Created by Finbar Allan on 28/09/2023.
//
//

import UIKit

class CalcVC: UIViewController {
    @IBOutlet weak var calcDisplay: UILabel!
    private lazy var calcModel = { return CalcModel() }()
    private var fractionalMode = false
    private var inputMode = false {
        didSet {
            if !inputMode {
                fractionalMode = false
            }
        }
    }
    private var displayValue: Double {
        get {
            return Double(calcDisplay.text!)!
        }
        set {
            calcDisplay.text = "\(newValue)"
            inputMode = false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoadCalled")
    }

    @IBAction func digitPressed(_ sender: UIButton) {
        if var digit = sender.titleLabel?.text {
            print("digit pressed = \(digit)")
            if digit == "." && fractionalMode {
                digit = ""
            } else {
                fractionalMode = (digit == ".") || fractionalMode
            }
            if inputMode {
                calcDisplay.text = calcDisplay.text! + digit
            } else {
                calcDisplay.text = digit
                inputMode = true
            }
        }
    }
    
    @IBAction func pushOperand() {
        inputMode = false
        if let result = calcModel.pushOperand(displayValue) {
            displayValue = result
        } else {
            displayValue = 0
        }
    }
    
    @IBAction func operationPressed(_ sender: UIButton) {
        if inputMode {
            pushOperand()
        }
        if let operation = sender.titleLabel?.text {
            if let result = calcModel.performOperation(operation) {
                displayValue = result
            } else {
                displayValue = 0
            }
        }
    }
}

