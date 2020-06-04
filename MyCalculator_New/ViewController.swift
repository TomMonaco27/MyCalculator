//
//  ViewController.swift
//  MyCalculator_New
//
//  Created by mac on 03.06.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var numberFromScreen:Double = 0;
    var firstNum:Double = 0;
    var operation:Int = 0;
    var mathSign:Bool = false;

    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func digits(_ sender: UIButton) {
        if result.text == "0" {
            result.text = ""
        }
        
        if mathSign == true {
            result.text = String(sender.tag)
            mathSign = false
        }
        else {
            result.text = result.text! + String(sender.tag)
        }
        
        numberFromScreen = Double(result.text!)!
    }
    
    


    @IBAction func buttons(_ sender: UIButton) {
        if result.text != "" && sender.tag != 0 && sender.tag != 18 {
            firstNum = Double(result.text!)!
            
            if sender.tag == 14 { // division /
                result.text = "/"
                
            }
            else if sender.tag == 15 { // multiplication *
                result.text = "*"
                
            }
            else if sender.tag == 16 {  // subtraction -
                result.text = "-"
            }
             else if sender.tag == 17 { //  additional +
                result.text = "+"
            }
            
            operation = sender.tag
            mathSign = true;
        }
        else if sender.tag == 18 { // equal all =
            if operation == 14 { // division
                result.text = String(firstNum / numberFromScreen)
                
            }
            else if operation == 15 { // multiplication *
                result.text = String(firstNum * numberFromScreen)
                
            }
            else if operation == 16 { // substraction -
                result.text = String(firstNum - numberFromScreen)
            }
            else if operation == 17 { // additional +
                result.text = String(firstNum + numberFromScreen)
            }
        }
        else if sender.tag == 0 {
            result.text = ""
            firstNum = 0
            numberFromScreen = 0
            operation = 0
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    



}
