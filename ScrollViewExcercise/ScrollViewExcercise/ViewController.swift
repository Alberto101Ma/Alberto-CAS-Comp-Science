//
//  ViewController.swift
//  ScrollViewExcercise
//
//  Created by Alberto Mancarella on 2/12/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        for i in 1...300{
            let newLabel = UILabel()
            newLabel.text = "Label \(i)"
            newLabel.frame = CGRect(x: 0, y: 0, width: 200, height: 30)
            stackView.addArrangedSubview(newLabel)
        }
        stackView.frame = CGRect(x: 0, y: 0, width: 200, height: 1500)
        scrollView.contentSize = CGSize(width: 200, height: 1500)
    }


}

