//
//  task2ViewController.swift
//  dz6ios
//
//  Created by Руслан Абрамов on 08.11.2023.
//

import UIKit

class task2ViewController: UIViewController {
    @IBOutlet var labelResult: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelResult.text = ""

    }
    
    @IBAction func didTapBackButton() {
        dismiss(animated: true)
    }
    @IBAction func didTapActionButton() {
        
    
        if let addText = textField.text {
            let intInput = Int(addText) ?? 0
            if intInput != 0 {
                let result = pow(2, intInput)
                labelResult.text = "\(result)"
            } else {
                labelResult.text = "Введите число"
            }
            
        }
        
        textField.text = ""
    }
}
