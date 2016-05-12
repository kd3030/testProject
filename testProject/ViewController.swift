//
//  ViewController.swift
//  testProject
//
//  Created by Kunal Desai on 5/10/16.
//  Copyright © 2016 Kunal Desai. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billText: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onTap(sender: AnyObject) {
        
        view.endEditing(true)
    }


    
    @IBAction func calculateTip(sender: AnyObject) {
        
        let tippercentage = [0.15, 0.20, 0.25]
        
        let bill = Double(billText.text!) ?? 0
        let tip = bill * tippercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }



}

