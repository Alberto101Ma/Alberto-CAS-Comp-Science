//
//  ViewController.swift
//  newButton
//
//  Created by Alberto Mancarella on 2/15/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: NamedButton!
    @IBOutlet weak var betterButton: NamedButton!
    
    @IBOutlet weak var bestButton: NamedButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.name = "bob"
        betterButton.name = "test"
        bestButton.name = "also a test"
        // Do any additional setup after loading the view.
    }

    @IBAction func pressButton(_ sender: Any) {
        let message : String
               if let sender = sender as? NamedButton {
                   message = "Hi I Am \(sender.name)"
               } else {
                   message = "no council member present"
               }
               let alert = UIAlertController(title: "(''>'')", message: message, preferredStyle: .alert)
               let action = UIAlertAction(title: "ok Donnt Care Diddnt ask", style: .destructive, handler: nil)
               
               alert.addAction(action)
               self.present(alert, animated: true, completion: nil)
           }
    }
    


