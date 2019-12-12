//
//  ViewController.swift
//  SwapiApp
//
//  Created by Alberto Mancarella on 12/11/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var moviename: UILabel!
    @IBOutlet weak var thedirector: UILabel!
    @IBOutlet weak var theproducer: UILabel!
    @IBOutlet weak var date: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        moviename.text = ""
        thedirector.text = ""
        theproducer.text = ""
        date.text = ""
        
        
        // Do any additional setup after loading the view.
    }
    
    
    
    func findwhatstarwars() -> Int{
        if input.text == "The Phantom Menace" {
            return 4
        }
        else if input.text == "The Attack of the Clones" {
            return 5
        }
            
        else if input.text == "Revenge of the Sith" {
            return 6
        }
        else if input.text == "A New Hope"{
            return 1
        }
            
        else if input.text == "The Empire Strikes Back"{
            return 2
        }
            
        else if input.text == "The Return of the Jedi"{
            return 3
        }
            
        else if input.text == "The Force Awakens"{
            return 7
        }
        
        return 8
    }
    
    
    @IBAction func searchmovie(_ sender: Any) {
        
        
        let url: URL = URL(string: "https://swapi.co/api/films/\(findwhatstarwars())/")!
        let responseData: Data? = try? Data(contentsOf: url)
        if let responseData = responseData {
            let json: Any? = try? JSONSerialization.jsonObject(with: responseData, options: [])
            if let json = json {
                let dictionary: [String: Any]? = json as? [String: Any]
                if let dictionary = dictionary {
                    
                    moviename.text = "Star Wars: \(input.text!)"
                    
                    
                    let releasedate: String? = dictionary["release_date"] as? String
                    if let releasedate = releasedate{
                        date.text = "Release date: \(releasedate)"
                        
                        let director: String? = dictionary["director"] as? String
                        if let director = director{
                            thedirector.text = "The director(s): \(director)"
                        }
                        
                        
                        let producer: String? = dictionary["producer"] as? String
                        if let producer = producer{
                            theproducer.text = "The producer(s): \(producer)"
                        }
                    }
                }
                
            }
        }
       
        else{
            moviename.text = "Error, movie name not found!"
            thedirector.text = ""
            theproducer.text = ""
            date.text = ""
        }
    }
}













