//
//  ViewController.swift
//  Calculator
//
//  Created by Jason Park on 7/26/16.
//  Copyright © 2016 Jason Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!
    
    var userInMiddleOfTyping = false
    
    @IBAction func touchDigit(sender: UIButton) {
        let digit = sender.currentTitle!
        if userInMiddleOfTyping {
            let digitInDisplay = display.text
            display.text = digitInDisplay! + digit
        }
        else {
            display.text = digit
        }
        userInMiddleOfTyping = true
        print("touched \(digit) digit.")
    }
    
    @IBAction func performOperation(sender: UIButton) {
        userInMiddleOfTyping = false
        if let mathematicalSymobol = sender.currentTitle {
            if mathematicalSymobol == "π" {
                display.text = String(M_PI)
            }
        }
    }
}

