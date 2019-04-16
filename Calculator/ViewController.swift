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
        print(1)
        let operantOne: Int = 1
        displayBoardLabel.text = "\(operantOne)"
    }
    
}

