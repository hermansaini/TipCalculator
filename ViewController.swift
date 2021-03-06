//
//  ViewController.swift
//  TipCalculator
//
//  Created by Herman Saini on 1/12/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    
    @IBOutlet weak var tipAmountLabel: UILabel!
    
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var numOfPeopleTextField: UITextField!
    
    @IBOutlet weak var totalPerPersonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var splitter = false;
    
    @IBAction func calculateTip(_ sender: Any) {
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = tip + bill
        
        tipAmountLabel.text = String(format: "$%.2f", tip)
        totalAmountLabel.text = String(format: "$%.2f", total)
        
        if(splitter){
            let numPeople = Double(numOfPeopleTextField.text!) ?? 0
            totalPerPersonLabel.text = String(format: "$%.2f", total/numPeople)
        }
    }
    

    @IBAction func calculateSplit(_ sender: Any) {
        splitter = true
        
        let bill = Double(billAmountTextField.text!) ?? 0
        
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        
        let total = tip + bill
        
        let numPeople = Double(numOfPeopleTextField.text!) ?? 0
        
        totalPerPersonLabel.text = String(format: "$%.2f", total/numPeople)
    }
    
}

