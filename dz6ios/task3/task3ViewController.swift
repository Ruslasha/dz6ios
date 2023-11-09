//
//  task3ViewController.swift
//  dz6ios
//
//  Created by Руслан Абрамов on 08.11.2023.
//

import UIKit

class task3ViewController: UIViewController {
    @IBOutlet var labelResult: UILabel!
    @IBOutlet var number1: UITextField!
    @IBOutlet var number2: UITextField!
    @IBOutlet var operation: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.text = ""

    }
    
    @IBAction func didTapBackButton() {
        dismiss(animated: true)
    }
    @IBAction func didTapActionButton() {
        
                guard let firstNumberText = number1.text,
                      let operation = operation.text,
                      let secondNumberText = number2.text else {
                    labelResult.text = "Некорректные данные"
                    return
                }

                guard let firstNumber = Double(firstNumberText),
                      let secondNumber = Double(secondNumberText) else {
                    labelResult.text = "Некорректные данные"
                    return
                }

                switch operation {
                case "+":
                    labelResult.text = "\(firstNumber + secondNumber)"
                case "-":
                    labelResult.text = "\(firstNumber - secondNumber)"
                case "*":
                    labelResult.text = "\(firstNumber * secondNumber)"
                case "/":
                    if secondNumber != 0 {
                        labelResult.text = "\(firstNumber / secondNumber)"
                    } else {
                        labelResult.text = "Деление на 0"
                    }
                    
                default:
                    labelResult.text = "Некорректные данные"
                    return
                }
    }
}
