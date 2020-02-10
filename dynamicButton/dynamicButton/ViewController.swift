//
//  ViewController.swift
//  dynamicButton
//
//  Created by Alberto Mancarella on 2/7/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var adventureButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        adventureButton.addTarget(self, action: #selector(addButton), for: .touchUpInside)
    
        // Do any additional setup after loading the view.
    }

     @objc func showAlert(){
        let alert = UIAlertController(title: "Hey! Listen!", message: "It's dangerous out there. Take this.", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Adventure!", style: .default))
        self.present(alert, animated: true, completion: {})
    }
   @objc func addButton(){
        let newButton = UIButton()
    newButton.setTitle("Explore", for: .normal)
    newButton.setTitleColor(UIColor(displayP3Red: 0, green: 0, blue: 1, alpha: 1), for: .normal)
    newButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
        stackView.addArrangedSubview(newButton)
    }
    
    
}



