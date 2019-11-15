//
//  ViewController.swift
//  Notes
//
//  Created by Alberto Mancarella on 11/15/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var currentnote: Note?
    
    
    
    @IBOutlet weak var note: UILabel!
    
    @IBOutlet weak var date: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        date.text = "\(currentnote!.date)"
        note.text = "\(currentnote!.note)"

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
