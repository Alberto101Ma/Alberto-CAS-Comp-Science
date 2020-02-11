//
//  showButtons.swift
//  DynamicStackView
//
//  Created by Alberto Mancarella on 2/10/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit

class showButtons: UIViewController {
    @IBOutlet weak var manyButtons: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addButton()
        // Do any additional setup after loading the view.
    }
    
    

    @objc func showAlert(){
       let alert = UIAlertController(title: "Hey, listen!", message: "Why did you click me, huh?!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Fine....", style: .default))
        self.present(alert, animated: true, completion: {})
    }
    
    
    @objc func addButton(){
          let newButton = UIButton()
         newButton.setTitle("Click Me", for: .normal)
         newButton.setTitleColor(UIColor(displayP3Red: 0, green: 0, blue: 1, alpha: 1), for: .normal)
    
         newButton.addTarget(self, action: #selector(showAlert), for: .touchUpInside)
             manyButtons.addArrangedSubview(newButton)
        
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

