//
//  ViewController.swift
//  Tipper
//
//  Created by Shumba Brown on 12/24/16.
//  Copyright © 2016 Shumba Brown. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Guest Stepper
    @IBOutlet weak var guestLabel: UILabel!
    @IBOutlet weak var guestStepper: UIStepper!
    
    @IBAction func guestStepperChange(_ sender: UIStepper) {
        guestLabel.text = Int(sender.value).description
        calculate()
    }
    // End
    
    // Tip Stepper
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var tipStepper: UIStepper!
    
    @IBAction func tipStepperChange(_ sender: UIStepper) {
        tipLabel.text = Int(sender.value).description
        calculate()
    }
    // End
    
    // Billing
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipDollarLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalPerGuestLabel: UILabel!
    @IBOutlet weak var currentValueLabel: UILabel!
    
    var value = 0
    
    func calculate() {
        let tipPercentage = Double(tipLabel.text!) ?? 0
        let numGuests = Double(guestLabel.text!) ?? 1
        
        let tip = (tipPercentage / 100) * Double(value)
        let total = tip + Double(value)
        let totalPerGuest = total / numGuests
        
        billLabel.text = String(format: "$%.2f", value)
        tipDollarLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        totalPerGuestLabel.text = String(format: "$%.2f", totalPerGuest)
        
        
    }
    // End
    
    
    @IBAction func dotButton(_ sender: UIButton) {
        //let value = Double(currentValueLabel.text!)
        //currentValueLabel.text = String(format: "$%.2", value!)
        
    }
    @IBAction func button(_ sender: UIButton) {
        value = value * 10
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    @IBAction func delButton(_ sender: UIButton) {
        value = value - (value % 10)
        value = value / 10
        print(value)
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    @IBAction func Button1(_ sender: UIButton) {
        value = (value * 10) + 1
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    @IBAction func Button2(_ sender: UIButton) {
        value = (value * 10) + 2
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    @IBAction func Button3(_ sender: UIButton) {
        value = (value * 10) + 3
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    @IBAction func Button4(_ sender: UIButton) {
        value = (value * 10) + 4
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    @IBAction func Button5(_ sender: UIButton) {
        value = (value * 10) + 5
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    @IBAction func Button6(_ sender: UIButton) {
        value = (value * 10) + 6
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    @IBAction func Button7(_ sender: UIButton) {
        value = (value * 10) + 7
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    @IBAction func Button8(_ sender: UIButton) {
        value = (value * 10) + 8
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    @IBAction func Button9(_ sender: UIButton) {
        value = (value * 10) + 9
        currentValueLabel.text = String(format: "$%.0d", value)
        calculate()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        guestStepper.wraps = true
        guestStepper.autorepeat = true
        guestStepper.maximumValue = 10
        
        tipStepper.wraps = true
        tipStepper.autorepeat = true
        tipStepper.maximumValue = 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

