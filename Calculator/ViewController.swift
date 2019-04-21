//
//  ViewController.swift
//  Calculator
//
//  Created by 刀剑神域 SAO project on 2019-04-16.
//  Copyright © 2019 GoldThumb Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var displayBoardLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func touchButtonOne(_ sender: UIButton) {
//        displayBoardLabel.text = displayBoardLabel.text! + "1"
        displayBoardLabel.text!.append("1")
//        displayBoardLabel.text! += "1"
    }
    
    @IBAction func touchButtonTwo(_ sender: UIButton) {

        displayBoardLabel.text!.append("2")
    }
    
    @IBAction func touchButtonThree(_ sender: UIButton) {
        displayBoardLabel.text!.append("3")
    }
    
    @IBAction func touchButtonFour(_ sender: UIButton) {
        displayBoardLabel.text!.append("4")
    }
    
    @IBAction func touchButtonFive(_ sender: UIButton) {
        displayBoardLabel.text!.append("5")
    }
    
    @IBAction func touchButtonSix(_ sender: UIButton) {
        displayBoardLabel.text!.append("6")
    }
    
    @IBAction func touchButtonSeven(_ sender: UIButton) {
        displayBoardLabel.text!.append("7")
    }
    
    @IBAction func touchButtonEight(_ sender: UIButton) {
        displayBoardLabel.text!.append("8")
    }
    
    @IBAction func touchButtonNine(_ sender: UIButton) {
        displayBoardLabel.text!.append("9")
    }
    
    @IBAction func touchButtonZero(_ sender: UIButton) {
        displayBoardLabel.text!.append("0")
    }
    
    
}

