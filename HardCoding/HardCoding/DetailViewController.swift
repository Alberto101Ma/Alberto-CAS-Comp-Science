//
//  DetailViewController.swift
//  HardCoding
//
//  Created by Alberto Mancarella on 2/3/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var characterClicked = ["name":"Mario", "description": "a plumber", "allignment": "good"]
    @IBOutlet weak var detailsTextView: UITextView!
    
    override func
        viewDidLoad() {
        super.viewDidLoad()
        
        detailsTextView.text = "\(characterClicked["name"] ?? "somebody") is \(characterClicked["description"] ?? "a mystery"). They are  \(characterClicked["alignment"] ??  "okish, I guess")."

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
