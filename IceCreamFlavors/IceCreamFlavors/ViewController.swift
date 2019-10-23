//
//  ViewController.swift
//  IceCreamFlavors
//
//  Created by Alberto Mancarella on 10/21/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var pickerview: UIPickerView!
    
    
    
    
    let flavors = [
        IceCream(price: 0.99, name: "Chocolate"),
        IceCream(price: 1.20, name: "Vannilla"),
        IceCream(price: 1.30, name: "Chocolate Chip"),
        IceCream(price: 2.99, name: "Mint"),
        IceCream(price: 3.99, name: "Coffee")
    ]
      
    func pickerView(_ pickerview: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return flavors.count
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return flavors[row].name
    }
    
    
    
    @IBAction func order(_ sender: Any) {
        let row = pickerview.selectedRow(inComponent: 0)
        label.text = "Thanks for ordering \(flavors[row].name) for $\(flavors[row].price)"
    }
}



struct IceCream{
    var price: Float
    var name: String
}




