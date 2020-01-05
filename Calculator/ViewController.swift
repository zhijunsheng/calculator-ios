//
//  ViewController.swift
//  Calculator
//
//  Created by 刀剑神域 SAO project on 2019-04-16.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerTextField: UITextField!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
    @IBOutlet weak var number1Label: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let a = Int(arc4random())
        let smallerA = a % 99 + 1
        number1Label.text = "\(smallerA)"
        
        
    }
    
    @IBAction func check(_ sender: UIButton) {
        let answer = Int(answerTextField.text!)!
        if answer == Int(number1Label.text!)! + 10 {
            wrongLabel.isHidden = true
            correctLabel.isHidden = false
        } else {
            correctLabel.isHidden = true
            wrongLabel.isHidden = false
        }
        
    }
    @IBAction func next(_ sender: UIButton) {
        let a = Int(arc4random())
        let smallerA = a % 100
        number1Label.text = "\(smallerA)"
        
        
    }
    
}
