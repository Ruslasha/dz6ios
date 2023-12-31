//
//  ViewController.swift
//  dz6ios
//
//  Created by Руслан Абрамов on 08.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var taskButton1: UIButton!
    @IBOutlet var taskButton2: UIButton!
    @IBOutlet var taskButton3: UIButton!
    @IBOutlet var labelMain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMain.text = "Выберите задание"
    }
    
    @IBAction func didTapTaskButton1() {
        let storyboard = UIStoryboard(name: "task1ViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "task1ViewController") as! task1ViewController
        present(vc, animated: true)
    }
    
    @IBAction func didTapTaskButton2() {
        let storyboard = UIStoryboard(name: "task2ViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "task2ViewController") as! task2ViewController
        present(vc, animated: true)
    }
    
    @IBAction func didTapTaskButton3() {
        let storyboard = UIStoryboard(name: "task3ViewController", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "task3ViewController") as! task3ViewController
        present(vc, animated: true)
    }


}

