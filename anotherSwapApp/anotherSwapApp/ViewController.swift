//
//  ViewController.swift
//  anotherSwapApp
//
//  Created by Alberto Mancarella on 12/11/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func pressOne(_ sender: Any) {
        let url: URL = URL(string: "https://swapi.co/api/people/1/")!
        //constructor
        let responseData: Data? = try? Data(contentsOf: url)
        //gonna crash if it doesn't works
        
        if let responseData = responseData {
        let json: Any? = try? JSONSerialization.jsonObject(with: responseData, options: [])
            if let dictionary: [String: Any] = json as! [String: Any]{
                let name: String? = dictionary["name"] as? String
                label.text = name
            }
        }
    }
}

//as
//try! ->
//try? -> gives nil
//try function

