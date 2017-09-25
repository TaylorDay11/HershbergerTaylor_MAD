//
//  ViewController.swift
//  Lab2
//
//  Created by Taylor Hershberger on 9/20/17.
//  Copyright © 2017 Taylor Hershberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //control image
    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var imageControl: UISegmentedControl!
    
    @IBAction func changeImage(_ sender: UISegmentedControl) {
        if imageControl.selectedSegmentIndex==0{
            mainImage.image=UIImage(named: "Pichu")
        }
        if imageControl.selectedSegmentIndex==1{
            mainImage.image=UIImage(named: "Pikachu")
        }
        else if imageControl.selectedSegmentIndex==2{
            mainImage.image=UIImage(named: "Raichu")
        }

    }
    
    //control font size
    
    @IBOutlet weak var fontSizeLabel: UILabel!

    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize = sender.value
        let fontSizeCGFloat = CGFloat(fontSize)
        fontSizeLabel.font = UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    
    //control background color
    
    @IBOutlet var backgroundColor: UIView!
    
    @IBOutlet weak var backgroundColorSwitch: UISwitch!
    
    @IBAction func backgroundSwitch(_ sender: UISwitch) {
        if backgroundColorSwitch.isOn{
            self.view.backgroundColor = UIColor.black
            fontSizeLabel.textColor = UIColor.white
        }
        else{
            self.view.backgroundColor = UIColor.white
            fontSizeLabel.textColor = UIColor.black
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

