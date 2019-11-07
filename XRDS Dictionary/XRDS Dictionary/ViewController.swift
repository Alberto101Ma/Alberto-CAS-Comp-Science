//
//  ViewController.swift
//  XRDS Dictionary
//
//  Created by Alberto Mancarella on 11/5/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var vocabWord:String = ""
    var vocabDefinition:String = ""
    
    @IBOutlet weak var definition: UILabel!

    
    @IBOutlet weak var word: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        word.text = vocabWord
        definition.text = vocabDefinition

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
