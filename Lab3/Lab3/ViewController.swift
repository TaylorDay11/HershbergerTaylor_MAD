//
//  ViewController.swift
//  Lab3
//
//  Created by Taylor Hershberger on 10/5/17.
//  Copyright © 2017 Taylor Hershberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var firstNumber: UITextField!
    
    @IBOutlet weak var secondNumber: UITextField!
    
    @IBOutlet weak var total: UILabel!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    func updateTotal(){
        var first:Float
        var second:Float
        var addition:Float
        
        if firstNumber.text!.isEmpty {
            first = 0.0
        }
        else{
            first = Float(firstNumber.text!)!
            if first == 0{
                let alert=UIAlertController(title: "Warning", message: "The number you entered is 0",preferredStyle:UIAlertControllerStyle.alert)
                let cancelAction = UIAlertAction(title:"Cancel",style:UIAlertActionStyle.cancel, handler:nil)
                
            alert.addAction(cancelAction)
            let okAction=UIAlertAction(title: "OK", style:UIAlertActionStyle.default, handler:{action in self.firstNumber.text="0"})
            alert.addAction(okAction)
            present(alert, animated:true, completion:nil)
            }
        }
    
    
    
    
    
        if secondNumber.text!.isEmpty {
            second = 0.0
        }
        else{
            second = Float(secondNumber.text!)!
            if second == 0{
            let alert=UIAlertController(title: "Warning", message: "The number you entered is 0",preferredStyle:UIAlertControllerStyle.alert)
            let cancelAction = UIAlertAction(title:"Cancel",style:UIAlertActionStyle.cancel, handler:nil)
            
            alert.addAction(cancelAction)
            let okAction=UIAlertAction(title: "OK", style:UIAlertActionStyle.default, handler:{action in self.secondNumber.text="0"})
            alert.addAction(okAction)
            present(alert, animated:true, completion:nil)
            }
        }
        
        addition=first+second
        
        total.text=String(format: "%.2f", addition)
    }
    
    func textFieldDidEndEditing(_ textField: UITextField){
        updateTotal()
    }

    override func viewDidLoad() {
        firstNumber.delegate=self
        secondNumber.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

