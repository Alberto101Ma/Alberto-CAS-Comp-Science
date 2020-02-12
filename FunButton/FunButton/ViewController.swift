//
//  ViewController.swift
//  FunButton
//
//  Created by Alberto Mancarella on 2/11/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPress(_ sender: Any) {
        var message: String
        if let sender = sender as? NamedButton
        
        message = "Hello, my name is \(message)"
        }
        else{
        message = "Hello, I don't know who I am"
            }
        
        
        let alert = UIAlertController(title: "Press me!", message: "Hi", preferredStyle: .alert)
        let action = UIAlertAction(title: "ok", style: .default, handler: nil)
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
        
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
