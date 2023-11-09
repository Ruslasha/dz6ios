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
    @IBAction func didTapBackButton() {
        dismiss(animated: true)
    }
    @IBAction func didTapActionButton() {
        labelResult.text =  textField.text
    }
}
