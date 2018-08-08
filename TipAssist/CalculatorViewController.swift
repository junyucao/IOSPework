//
//  ViewController.swift
//  TipAsist
//
//  Created by David Cao on 8/5/18.
//  Copyright © 2018 David Cao. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {
    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipTextField: UILabel!
    @IBOutlet weak var totalTextField: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        var tipPercentArray = [0.15, 0.18, 0.2, 0.25]
        
        let bill = Double(billTextField.text!) ?? 0     //?? operator use default value if nil
        
        let tip = bill * tipPercentArray[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipTextField.text = String(format: "$%.2f", tip)
        totalTextField.text = String(format: "$%.2f", total)
    }
    
}

