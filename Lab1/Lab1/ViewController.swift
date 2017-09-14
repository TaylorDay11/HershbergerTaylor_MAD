//
//  ViewController.swift
//  Lab1
//
//  Created by Taylor Hershberger on 9/13/17.
//  Copyright © 2017 Taylor Hershberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var mainLabel: UILabel!
    
    
    @IBAction func patrickButton(_ sender: UIButton) {
        mainImage.image = UIImage(named:"Patrick")
        mainLabel.text = "I'm mad. I can't see my forehead."
    }
    
    
    @IBAction func spongebobButton(_ sender: UIButton) {
         mainImage.image = UIImage(named:"Spongebob")
        mainLabel.text = "I'm Ready! I'm Ready!"
    }
    
    @IBAction func garyButton(_ sender: UIButton) {
         mainImage.image = UIImage(named:"Gary")
        mainLabel.text = "Meow!"
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

