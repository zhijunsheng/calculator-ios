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
    @IBOutlet weak var quotientTextField: UITextField!
    @IBOutlet weak var remainderTextField: UITextField!
    @IBOutlet weak var number4Label: UILabel!
    @IBOutlet weak var number3Label: UILabel!
    @IBOutlet weak var questionmark: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startRandom()
    }

    @IBAction func check(_ sender: Any) {
        if answerTextField.text == "" {
            return
        }
        let x = Int(answerTextField.text!)!
        let num1 = Int(number1Label.text!)!
        let num2 = Int(number2Label.text!)!
        let sum = num1 + num2
        
        if x == sum {
            checkmark.text = "Correct!"
        } else {
            checkmark.text = "Incorrect!"
        }
    }
    
    @IBAction func generate(_ sender: Any) {
        if answerTextField.text == "" || checkmark.text == "Incorrect!" {
            return
        }
      
        checkmark.text = "?"
        answerTextField.text = ""

        startRandom()
    }
    
    func startRandom() {
        number1Label.text = "\(arc4random() % 100)"
        number2Label.text = "\(arc4random() % 100)"
    }
    
    
    @IBAction func generateDivision(_ sender: Any) {
        if quotientTextField.text == "" || questionmark.text == "Incorrect!" {
                  return
              }
        questionmark.text = "?"
        quotientTextField.text = ""
        remainderTextField.text = ""
        
    }
    
    @IBAction func checkDivision(_ sender: Any) {
        if quotientTextField.text == "" {
            return
        }
        
        let x = Int(quotientTextField.text!)!
        let num1 = Int(number3Label.text!)!
        let num2 = Int(number4Label.text!)!
        let sum = num1 + num2
               
        if x == sum {
            questionmark.text = "Correct."
        } else {
            questionmark.text = "Incorrect."
        }
        
    }
    
    
}


