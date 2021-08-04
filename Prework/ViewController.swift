//
//  ViewController.swift
//  Prework
//
//  Created by 苏大立 on 2021/8/4.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var SplitNumberTextField: UITextField!
    @IBOutlet weak var SplittedBillLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        let numToSplit = Double(SplitNumberTextField.text!) ?? 1
        
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = bill + tip
        
        let splitted = total / numToSplit
        
        tipAmountLabel.text = String(format: "$%.2f",tip)
        
        totalLabel.text = String(format:"$%.2f",total)
        
        SplittedBillLabel.text = String(format:"$%.2f",splitted)
        
    }
    
    
}

