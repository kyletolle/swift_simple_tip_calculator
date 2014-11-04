//
//  ViewController.swift
//  Swift Simple Tip Calculator
//
//  Created by Kyle Tolle on 11/3/14.
//  Copyright (c) 2014 Kyle Tolle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtMealCost: UITextField!
    @IBOutlet weak var txtTip: UITextField!
    @IBOutlet weak var lblTipCalculated: UILabel!
    
    var mealCost = ""
    var tipPercentage = ""
    var answer : Float = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnCalculate(sender: UIButton) {
        calculateTip()
    }

    @IBAction func btnClear(sender: UIButton) {
        txtMealCost.text = ""
        txtTip.text = ""
        
        lblTipCalculated.text = "Tip Total"
    }
    
    func calculateTip() -> Bool {
        mealCost = txtMealCost.text
        tipPercentage = txtTip.text
        
        var fMealCost = (mealCost as NSString).floatValue
        var fTipPercentage = (tipPercentage as NSString).floatValue
        
        answer = fMealCost * (fTipPercentage * 0.01)
        
        var answerFormat : NSString = NSString(format: "%0.2f", answer)
        
        lblTipCalculated.text = "Tip Total: $\(answerFormat)"
        
        return true
    }
}

