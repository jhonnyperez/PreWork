//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Jhonny Perez on 1/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipAmountLbl: UILabel!
    @IBOutlet weak var totalAmountLbl: UILabel!
    @IBOutlet weak var billAmountTF: UITextField!
    @IBOutlet weak var tipPercentSegmentBar: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func onTipChange(_ sender: Any) {
        calculateTip()
    }

    @IBAction func onBillChange(_ sender: UITextField) {
        calculateTip()
    }
    func calculateTip(){
        // Get bill amount from text field input
        let bill = Double(billAmountTF.text!) ?? 0
        // Get total tip by multiplying tip * tipPercentages
        let tipPercentages = [0.15, 0.18, 0.2]
        
        let tip = bill * tipPercentages[tipPercentSegmentBar.selectedSegmentIndex]
        
        let total = bill + tip
        
        // Update Tip Amount Label
        tipAmountLbl.text = String(format: "$%.2f", tip)
        // Update Total Amount
        totalAmountLbl.text = String(format: "$%.2f", total)
    }
}

