//
//  ViewController.swift
//  Project-1
//
//  Created by Taylor Hershberger on 10/14/17.
//  Copyright © 2017 Taylor Hershberger. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Temp: UISegmentedControl!
    
    @IBOutlet weak var Mood: UISegmentedControl!
    
    @IBOutlet weak var Kind: UISegmentedControl!
    
    @IBOutlet weak var choice1: UILabel!
    
    @IBOutlet weak var choice2: UILabel!
    
    @IBOutlet weak var Try: UILabel!
    
    @IBAction func Submit(_ sender: UIButton) {
        Try.text="You should try:"
        
        /*
        let Pizza = [0,0,2,"Pizza",0]
        let Soup = [0,2,1,"Soup",0]
        let Salad = [2,0,1,"Salad",0]
        let Yogurt = [1,1,3,"Pizza",0]
        let BreakfastBurrito = [0,2,0,"Breakfast Burrito",0]
        let IceCream = [2,3,3,"Ice Cream",0]
        let Chocolate = [0,2,3,"Chocolate",0]
        let Popcorn = [1,2,3,"Popcorn",0]
        let Steak = [1,1,2,"Steak",0]
        let Bagel = [2,1,0,"Bagel",0]
        let Waffle = [2,0,0,"Waffle",0]
        let Burrito = [1,0,1,"Steak",0]
        let CornDog = [1,2,1,"Corn Dog",0]
        let PBJ = [2,1,1,"PB&J",0]
        let Pasta = [0,0,2,"Pasta",0]
        */
 
        //let foodPicker = [Pizza,Soup,Salad,Yogurt,BreakfastBurrito,IceCream,Chocolate,Popcorn,Steak,Bagel,Waffle,Burrito,CornDog,PBJ,Pasta]
        
        //var x=0
        //while x<foodPicker.count{
            //var y=foodPicker[x]
            
            //var chooseTemp=y[0]
            //var chooseMood=y[1]
            //var chooseKind=y[2]
            //var count=y[3]
        
        var Pizza=0
        var Soup=0
        var Salad=0
        var Yogurt=0
        var BreakfastBurrito=0
        var IceCream=0
        var Chocolate=0
        var Popcorn=0
        var Steak=0
        var Bagel=0
        var Waffle=0
        var Burrito=0
        var CornDog=0
        var PBJ=0
        var Pasta=0
        var Cereal=0
        var Oatmeal=0
        var Chips=0
        var Nachos=0
        var ChickenPotPie=0
        var GrilledCheese=0
        var Hamburger=0
        var SnowCone=0
        var Smoothie=0
        var Ramen=0
        var BreakfastSandwich=0
        var ChickenFriedSteak=0
        var FruitParfait=0
        var Panini=0
        var ChickenNuggets=0
            
            if Temp.selectedSegmentIndex == 0{
                Pizza += 1
                Soup += 1
                Chocolate += 1
                BreakfastBurrito += 1
                Pasta += 1
                Steak += 1
                Oatmeal += 1
                Nachos += 1
                ChickenPotPie += 1
                Hamburger += 1
                Ramen += 1
                BreakfastSandwich += 1
                ChickenFriedSteak += 1
            }
            else if Temp.selectedSegmentIndex == 1{
                Yogurt += 1
                Popcorn += 1
                Steak += 1
                Burrito += 1
                CornDog += 1
                Waffle += 1
                Bagel += 1
                Pasta += 1
                Cereal += 1
                Chips += 1
                GrilledCheese += 1
                Chocolate += 1
                Hamburger += 1
                Smoothie += 1
                ChickenFriedSteak += 1
                FruitParfait += 1
            }
            else if Temp.selectedSegmentIndex == 2{
                Salad += 1
                IceCream += 1
                Bagel += 1
                Waffle += 1
                PBJ += 1
                Yogurt += 1
                Popcorn += 1
                Cereal += 1
                SnowCone += 1
                Smoothie += 1
                BreakfastSandwich += 1
                FruitParfait += 1
                ChickenNuggets += 1
                Panini += 1
                Pasta += 1
            }
            
            if Mood.selectedSegmentIndex == 0{
                Pizza += 1
                Salad += 1
                Waffle += 1
                Burrito += 1
                Pasta += 1
                Yogurt += 1
                Steak += 1
                Bagel += 1
                Cereal += 1
                Nachos += 1
                Oatmeal += 1
                Smoothie += 1
                Ramen += 1
                ChickenFriedSteak += 1
            }
            else if Mood.selectedSegmentIndex == 1{
                Yogurt += 1
                Steak += 1
                Bagel += 1
                PBJ += 1
                Waffle += 1
                Pasta += 1
                Popcorn += 1
                Cereal += 1
                Chips += 1
                GrilledCheese += 1
                Hamburger += 1
                SnowCone += 1
                Ramen += 1
                BreakfastSandwich += 1
                ChickenFriedSteak += 1
                FruitParfait += 1
                CornDog += 1
            }
            else if Mood.selectedSegmentIndex == 2{
                Soup += 1
                BreakfastBurrito += 1
                IceCream += 1
                Popcorn += 1
                CornDog += 1
                Pizza += 1
                Chocolate += 1
                Oatmeal += 1
                Chips += 1
                ChickenPotPie += 1
                Hamburger += 1
                Smoothie += 1
                BreakfastSandwich += 1
                FruitParfait += 1
                Panini += 1
                ChickenNuggets += 1
            }
            
            if Kind.selectedSegmentIndex == 0{
                BreakfastBurrito += 1
                Bagel += 1
                Waffle += 1
                Cereal += 1
                Oatmeal += 1
                Smoothie += 1
                BreakfastSandwich += 1
                ChickenFriedSteak += 1
                FruitParfait += 1
            }
            else if Kind.selectedSegmentIndex == 1{
                Soup += 1
                Salad += 1
                Burrito += 1
                CornDog += 1
                PBJ += 1
                Pizza += 1
                Nachos += 1
                ChickenPotPie += 1
                GrilledCheese += 1
                Hamburger += 1
                Ramen += 1
                Panini += 1
                ChickenNuggets += 1
            }
            else if Kind.selectedSegmentIndex == 2{
                Pizza += 1
                Steak += 1
                Pasta += 1
                Burrito += 1
                Soup += 1
                ChickenPotPie += 1
                Hamburger += 1
                Ramen += 1
                Panini += 1
            }
            else if Kind.selectedSegmentIndex == 3{
                Yogurt += 1
                IceCream += 1
                Chocolate += 1
                Popcorn += 1
                Chips += 1
                Nachos += 1
                SnowCone += 1
                Smoothie += 1
                Ramen += 1
                FruitParfait += 1
        }
        let foodPicker = [Pizza,Soup,Salad,Yogurt,BreakfastBurrito,IceCream,Chocolate,Popcorn,Steak,Bagel,Waffle,Burrito,CornDog,PBJ,Pasta,Cereal,Oatmeal,Chips,Nachos,ChickenPotPie,GrilledCheese,Hamburger,SnowCone,Smoothie,Ramen,BreakfastSandwich,ChickenFriedSteak,FruitParfait,Panini,ChickenNuggets]
        let foodPickerName = ["Pizza","Soup","Salad","Yogurt","Breakfast Burrito","Ice Cream","Chocolate","Popcorn","Steak","Bagel","Waffle","Burrito","Corn Dog","PBJ","Pasta","Cereal","Oatmeal","Chips","Nachos","Chicken Pot Pie","Grilled Cheese","Hamburger","Snow Cone","Smoothie","Ramen","Breakfast Sandwich","Chicken Fried Steak","Fruit Parfait","Panini","Chicken Nuggets"]
        var z=1
        var x=0
        while x<foodPicker.count{
            let y=foodPicker[x]
            if y == 3{
                if z == 1{
                    choice1.text=String(foodPickerName[x])
                    z=2
                }
                else if z == 2{
                    choice2.text = String(foodPickerName[x])
                    z=3
                }
            }
            x += 1
        }
        

            //x += 1
        //}
        
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

