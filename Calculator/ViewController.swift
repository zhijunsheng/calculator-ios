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
    @IBOutlet weak var number2Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }
    
    @IBAction func check(_ sender: UIButton) {
        if answerTextField.text == ("") {
            return
        }
        let answer = Int(answerTextField.text!)!
        if answer == Int(number1Label.text!)! + Int(number2Label.text!)! {
            wrongLabel.isHidden = true
            correctLabel.isHidden = false
        } else {
            correctLabel.isHidden = true
            wrongLabel.isHidden = false
        }
    }
    
    @IBAction func next(_ sender: UIButton) {
        nextQuestion()
    }
    
    func nextQuestion() {
        let a = Int(arc4random())
        let smallerA = a % 100
        number1Label.text = "\(smallerA)"
        
        let b = Int(arc4random())
        let smallerB = b % 100
        number2Label.text = "\(smallerB)"
    }
}
