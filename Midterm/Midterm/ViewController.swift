//
//  ViewController.swift
//  Midterm
//
//  Created by Taylor Hershberger on 10/19/17.
//  Copyright © 2017 Taylor Hershberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var commuteTime: UITextField!
    
    @IBOutlet weak var Monthly: UISwitch!
    
    @IBOutlet weak var Tank: UISlider!
    @IBOutlet weak var gasTank: UILabel!
    
    
    @IBOutlet weak var Mode: UISegmentedControl!
    
    @IBOutlet weak var tankLabel: UILabel!
    
    @IBOutlet weak var Commute: UIButton!
    
    @IBOutlet weak var totalTime: UILabel!
    
    @IBOutlet weak var totalGas: UILabel!
    
    
    @IBOutlet weak var vehicleImage: UIImageView!


    override func viewDidLoad() {
        commuteTime.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var gasTankValue:Float = 15.0
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }
    
    @IBAction func changeGasTank(_ sender: UISlider) {
        gasTankValue = sender.value
        
        gasTank.text=String(format: "%0f", gasTankValue)
        
    }
    
    
    @IBAction func alertCarpool(_ sender: UISegmentedControl) {
        if Mode.selectedSegmentIndex == 0{
            let alert=UIAlertController(title:"You chose car", message:"Try carpooling to save money and be green! :)", preferredStyle:UIAlertControllerStyle.alert)
            let cancelAction = UIAlertAction(title:"Okay",style:UIAlertActionStyle.cancel, handler:nil)
            alert.addAction(cancelAction)
            present(alert, animated: true, completion: nil)
            vehicleImage.image=UIImage(named:"Car")
        }
        else if Mode.selectedSegmentIndex == 1{
            vehicleImage.image=UIImage(named:"Bus")
        }
        else{
            vehicleImage.image=UIImage(named:"Bike")
        }


    }
    
    
    @IBAction func updateTotals(_ sender: Any) {
        var totalCommuteMiles:Float
        var gasToPurchase:Float
        var averageSpeed:Float
        var gasMileage:Float
        var totalCommuteTime:Float
        
        var modeOfTrans:Float = 1
        
        gasMileage = 24.0
        
        if commuteTime.text!.isEmpty{
            totalCommuteMiles = 0.0
        }
        else{
            totalCommuteMiles = Float(commuteTime.text!)!
        }
        
        if Mode.selectedSegmentIndex == 0{
            averageSpeed = 20.0
            modeOfTrans=1
        }
        else if Mode.selectedSegmentIndex == 1{
            averageSpeed = 12.0
            
            modeOfTrans = 0
            //totalGas.text = "0.0"
        }
        else{
            averageSpeed = 10.0
            //totalGas.text = "0.0"
            modeOfTrans = 0
            
        }
        
        gasToPurchase = (totalCommuteMiles/gasMileage)
        totalCommuteTime = (totalCommuteMiles/averageSpeed)*60
        gasToPurchase=gasToPurchase*modeOfTrans
        
        if Monthly.isOn{
            totalCommuteTime = totalCommuteTime*20
            gasToPurchase = gasToPurchase*20
        }
        
        gasToPurchase = gasToPurchase - gasTankValue
        
        if gasToPurchase<0{
            gasToPurchase = 0
        }
        
        totalTime.text=String(format: "%0f", totalCommuteTime)
        totalGas.text=String(format: "%0f", gasToPurchase)
        
    }
    


}


