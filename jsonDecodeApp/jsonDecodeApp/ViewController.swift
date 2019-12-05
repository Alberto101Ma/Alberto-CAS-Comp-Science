//
//  ViewController.swift
//  jsonDecodeApp
//
//  Created by Riley John Gibbs on 12/3/19.
//  Copyright © 2019 Riley John Gibbs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var jsonFileData: Data?
    var jsonFileString: String?

    // TODO: Come up with a better UI than just a single boring label.

    @IBOutlet weak var header: UILabel!
    
    @IBOutlet weak var suspect: UILabel!
    @IBOutlet weak var hobbieslabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let fileUrl = Bundle.main.url(forResource: "data", withExtension: "json") {
            jsonFileData = try? Data(contentsOf: fileUrl)
            jsonFileString = try? String(contentsOf: fileUrl)
        }
        
        // This just puts the file contents (unparsed) into the label.
       // if let string = jsonFileString {
        //    myLabel.text = string
       // }
        
        if let data = jsonFileData {
            let json = try? JSONSerialization.jsonObject(with: jsonFileData!, options: [])
            let dictionary = json as! [String: Any]
            let name: String = dictionary["name"] as! String
            let hobbies: [String] = dictionary["hobbies"] as! [String]
            let age: Int = dictionary["age"] as! Int
            suspect.text = "Suspect: \(name)" + "\n" + "Age: " + "\(age)"
            hobbieslabel.text = "Hobbies of suspect:" + "\n" + "-\(hobbies[0])" + "\n" + "-\(hobbies[1])" + "\n" + "-\(hobbies[2])"
        }
    }

}

