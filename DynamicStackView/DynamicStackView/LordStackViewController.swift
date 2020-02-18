//
//  LordStackViewController.swift
//  DynamicStackView
//
//  Created by Alberto Mancarella on 2/6/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit

class LordStackViewController: UIViewController {

    var labelCount = 10
    var count = 0
    
    @IBOutlet weak var hiStackView: UIStackView!
    override func viewDidLoad() {

            
        super.viewDidLoad()
        let labels = (1...labelCount).map({ (x) -> UILabel in let newLabel = UILabel()
            newLabel.text = "hi buddy \(x)"
            return newLabel
        })
        
        
        for (x, label) in labels.enumerated(){
            label.textAlignment = .center
            hiStackView.addArrangedSubview(label)
            let constraint = NSLayoutConstraint(item: label, attribute: .height, relatedBy: .equal, toItem: labels[0], attribute: .height, multiplier: 1, constant: 1)
            
            if label != labels[0]{
                hiStackView.addConstraint(constraint)
            }
                    }
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
