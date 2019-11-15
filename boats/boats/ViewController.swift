//
//  ViewController.swift
//  boats
//
//  Created by Alberto Mancarella on 11/14/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var boat:Boat?
    
    var boatTypes: String = ""
    var boatDef: String = ""

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var dp: UILabel!
    @IBOutlet weak var color: UILabel!
    @IBOutlet weak var size: UILabel!
    @IBOutlet weak var spec: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            name.text = "Boat name: \(boat!.name)"
        dp.text = "Dolphin Power: \(boat!.dolphinPower)"
        color.text = "Color: \(boat!.color)"
        size.text = "Size: \(boat!.size)"
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
