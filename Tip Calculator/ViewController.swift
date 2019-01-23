//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Hailey Cassidy on 1/8/19.
//  Copyright © 2019 Hailey Cassidy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipSelector: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func Tap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func CalcTip(_ sender: Any) {
        let tipPercentages = [0.15, 0.18, 0.2]
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipSelector.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        
        
    }
}

