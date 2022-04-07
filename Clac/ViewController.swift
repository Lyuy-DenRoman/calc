//
//  ViewController.swift
//  Clac
//
//  Created by Гость on 07.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btnAC: UIButton!
    @IBOutlet weak var btnzero: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var btnequal: UIButton!
    @IBOutlet weak var buttons: UIView!
    @IBOutlet weak var buttonChangeResultLabel: UIStepper!
    var numberOne = ""
    var numberTwo = ""
    var operand = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func inputNumber(_sender: UIButton){
        if operand.isEmpty{
            numberOne = numberOne +
            (_sender.titleLabel?.text)!
            resultLabel.text = numberOne
        }else{
            numberTwo = numberTwo +
            (_sender.titleLabel?.text)!
            resultLabel.text = numberTwo
        }
    }
    @IBAction func inputOperand(_sender: UIButton) {
        operand = _sender.titleLabel?.text as!
        String
    }
    @IBAction func result(_sender: UIButton){
        numberOne = ""
        numberTwo = ""
        operand = ""
        resultLabel.text = "0"
    }
    @IBAction func result(_ sender: UIButton) {
        var result = 0.0
        
        switch operand {
        case "/":
            result = Double(numberOne)! /
            Double(numberTwo)!
        case "+":
            result = Double(numberOne)! +
            Double(numberTwo)!
        case "-":
            result = Double(numberOne)! -
            Double(numberTwo)!
        case "*":
            result = Double(numberOne)! *
            Double(numberTwo)!
        default:
            break
        }
        if result.truncatingRemainder(dividingBy: 1.0)
            == 0.0 {
            resultLabel.text = String(Int(result))
        }else{
            resultLabel.text = String(result)
        }
    }
    @IBAction func stepper(_ sender: UIStepper) {
        let font = resultLabel.font?.fontName
        let fontSize = CGFloat(sender.value)
        resultLabel.font = UIFont(name: font!, size: fontSize)
    }
    @IBAction func hiddenButtons(_sender: UISwitch) {
        buttons.isHidden = !buttons.isHidden
        resultLabel.isHidden = !resultLabel.isHidden
    }
}

