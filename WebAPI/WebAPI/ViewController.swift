//
//  ViewController.swift
//  WebAPI
//
//  Created by Alberto Mancarella on 12/20/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  
    
    @IBOutlet weak var moviedirector: UILabel!
    @IBOutlet weak var ep: UILabel!
    @IBOutlet weak var movietitle: UILabel!
    
    @IBOutlet weak var movieproducer: UILabel!
    
    
    
    var currentmovie: Starwars?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            super.viewDidLoad()
            movietitle.text = "\(currentmovie!.title)"
            moviedirector.text = "Director(s): \(currentmovie!.director)"
        ep.text = "Episode: \(currentmovie!.episodenumber)"
        movieproducer.text = "Producer(s): \(currentmovie!.producer)"

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
