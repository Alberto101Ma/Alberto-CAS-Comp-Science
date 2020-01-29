//
//  ViewController.swift
//  AppRememberer
//
//  Created by Alberto Mancarella on 1/7/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingslabel: UILabel!
    
    @IBOutlet weak var nameentry: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
 
        greetingslabel.text = "Hello, \(existingName ?? "Alburito")!"
    }
    
    func getNameFileURL() -> URL {
        
        let documentURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
        return documentURL.appendingPathComponent("UserName.txt")
    }
    
    
    @IBAction func rememberName(_ sender: Any) {
        let name = nameentry.text!
        try! name.write(to: getNameFileURL(), atomically: true, encoding: .utf8 )
        greetingslabel.text = "Hello, \(name)"
    }
    
    @IBAction func forgetName(_ sender: Any) {
        try? FileManager.default.removeItem(at: getNameFileURL())
        greetingslabel.text = "who dis"
    }
    
}

