//
//  task1ViewController.swift
//  dz6ios
//
//  Created by Руслан Абрамов on 08.11.2023.
//

import UIKit

class task1ViewController: UIViewController {
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
        
        if let addText = textField.text,
           var resultText = labelResult.text {
            resultText += " " + addText
            labelResult.text = resultText
        }
        
        textField.text = ""
    }
}
