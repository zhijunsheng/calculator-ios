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
    @IBOutlet weak var number1Label: UILabel!
    @IBOutlet weak var number2Label: UILabel!
    
    
    @IBOutlet weak var checkmark: UILabel!
    
   
    @IBAction func check(_ sender: Any) {
        let x = Int(answerTextField.text!)!
        let num1 = Int(number1Label.text!)!
        let num2 = Int(number2Label.text!)!
        let sum = num1 + num2
        print("\(sum)")
        
        if x == sum {
            checkmark.text = "Correct!"
        } else {
            checkmark.text = "Incorrect!"
            
        }
    }
    
    @IBAction func generate(_ sender: Any) {
        number1Label.text = "\(arc4random() % 10 + 1)"
        number2Label.text = "\(arc4random() % 10 + 1)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
   
    
    
}

