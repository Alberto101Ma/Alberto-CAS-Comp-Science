//
//  ViewController.swift
//  weatherapp
//
//  Created by Alberto Mancarella on 12/18/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var year: UITextField!
    @IBOutlet weak var month: UITextField!
    @IBOutlet weak var day: UITextField!
    @IBOutlet weak var error: UILabel!
    @IBOutlet weak var location: UITextField!
    
    var jsonFileData: Data?
    var jsonFileString: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func button(_ sender: Any) {
      let url: URL? = URL(string: "https://www.metaweather.com/api/location/search/?query=\(location.text!)")
        print("testya
        ")
               let responseData: Data? = try? Data(contentsOf: url!)
               if let responseData = responseData {
                   let json: Any? = try? JSONSerialization.jsonObject(with: responseData, options: [])
                   if let json = json {
                       let dictionary: [String: Any]? = json as? [String: Any]
                       if let dictionary = dictionary {
                        
                        
                           let releasedate: String? = dictionary["woeid"] as? String
                           if let releasedate = releasedate{
                            print(releasedate)
                        }
                           }
                       }
               } else{
                print("test")
        }
        
    }

}

