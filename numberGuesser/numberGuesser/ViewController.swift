//
//  ViewController.swift
//  numberGuesser
//
//  Created by Alberto Mancarella on 2/15/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
 
     
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var destination = segue.destination as!  GameViewController
        
        if segue.identifier == "easy"{
            destination.difficulty = "easy"
        }
        if segue.identifier == "medium"{
        destination.difficulty = "medium"
        }
        if segue.identifier == "hard"{
        destination.difficulty = "hard"
        }
    }
        
}
 
