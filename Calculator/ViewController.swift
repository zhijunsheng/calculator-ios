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
    @IBOutlet weak var answerTextField2: UITextField!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var correctLabel2: UILabel!
    @IBOutlet weak var wrongLabel: UILabel!
    @IBOutlet weak var wrongLabel2: UILabel!
    @IBOutlet weak var number1Label: UILabel!
    @IBOutlet weak var number2Label: UILabel!
    @IBOutlet weak var secondNumber1Label: UILabel!
    @IBOutlet weak var secondNumber2Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nextQuestion()
    }
    
    @IBAction func check(_ sender: UIButton) {
        guard let rawText = answerTextField.text, let answer = Int(rawText) else {
            return
        }
        
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
    
    @IBAction func check2(_ sender: Any) {
        guard let rawText = answerTextField2.text, let answer = Int(rawText) else {
            return
        }
        
        if answer == Int(secondNumber1Label.text!)! / Int(secondNumber2Label.text!)! {
            wrongLabel2.isHidden = true
            correctLabel2.isHidden = false
        } else {
            correctLabel2.isHidden = true
            wrongLabel2.isHidden = false
        }
    }
    
    @IBAction func next2(_ sender: UIButton) {
        nextQuestion2()
    }
    
    func nextQuestion2() {
        let a = Int(arc4random())
        let smallerA = a % 100
        number1Label.text = "\(smallerA)"
        
        let b = Int(arc4random())
        let smallerB = b % 100
        number2Label.text = "\(smallerB)"
    }
    
}
