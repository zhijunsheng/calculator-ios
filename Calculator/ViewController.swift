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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func check(_ sender: UIButton) {
        let answer = Int(answerTextField.text!)!
        
        if answer == 33 {
            wrongLabel.isHidden = true
            correctLabel.isHidden = false
        } else {
            correctLabel.isHidden = true
            wrongLabel.isHidden = false
        }
    }
}
