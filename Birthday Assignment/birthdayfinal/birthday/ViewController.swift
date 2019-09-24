//
//  ViewController.swift
//  birthday
//
//  Created by Alberto Mancarella on 9/23/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
var didhavebirthday = 1
var ageofperson = 0
    
    @IBOutlet weak var ageinput: UITextField!
    @IBOutlet weak var bornin: UILabel!
    @IBOutlet weak var yearborn: UILabel!
    @IBOutlet weak var `switch`: UISwitch!
    @IBOutlet weak var age: UITextField!
    @IBOutlet weak var button: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bornin.text = ""
        yearborn.text = ""
        `switch`.isOn = false
    }
        // Do any additional setup after loading the view.

    
 
    @IBAction func checkswitch(_ sender: UISwitch) {
        let check = `switch`.isOn
        if check{
            didhavebirthday = 0
        }
        else{
            didhavebirthday = 1
        }
    }
    

    @IBAction func findyearborn(_ sender: UIButton) {

        var inputage = (Int(age.text!) ?? -1)
        
        if inputage < 0{
            bornin.text = "Please try to only"
            yearborn.text = "use positive numbers!"
        }
        else{
            var birthdayyear = 2019 - inputage - didhavebirthday
            bornin.text = "Your birthday year is"
            yearborn.text = "\(birthdayyear)"
        }
        
    }
}
    

    

    
    
    

