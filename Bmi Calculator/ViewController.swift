//
//  ViewController.swift
//  Bmi Calculator
//
//  Created by Mark on 24/1/2562 BE.
//  Copyright © 2562 Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    @IBOutlet weak var imageResult: UIImageView!
    @IBOutlet weak var bmi: UILabel!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageResult.image = UIImage(named: "icon.png")
        result.text = "Please input your height and weight"
    }
    
    @IBAction func calculate(_ sender: Any) {
        let height = (heightField.text! as NSString).doubleValue/100
        let weight = (weightField.text! as NSString).doubleValue
        let bmi = weight/pow(height,2)
        
        result.font = UIFont.boldSystemFont(ofSize: 17)
        
        if(bmi<18.5){
            imageResult.image = UIImage(named: "underweight.png")
            result.text = "You're underweight"
            result.textColor = UIColor.blue
        }
        
        else if(bmi>=18.5 && bmi<25){
            imageResult.image = UIImage(named: "normal.png")
            result.text = "You're healthy"
            result.textColor = UIColor.green
        }
        
        else if(bmi>=25 && bmi<30){
            imageResult.image = UIImage(named: "fat.png")
            result.text = "You're fat"
            result.textColor = UIColor.orange
        }
        
        else {
            imageResult.image = UIImage(named: "Obese.png")
            result.text = "You're obese"
            result.textColor = UIColor.red
        }
    }
    


}

