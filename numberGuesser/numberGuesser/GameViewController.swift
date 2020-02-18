//
//  GameViewController.swift
//  numberGuesser
//
//  Created by Alberto Mancarella on 2/15/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    var labelCount = 0
    @IBOutlet weak var manyButtons: UIStackView!
    var difficulty = String()
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!
    let buttonMessage = ButtonMessage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButtons()
        stackView.frame = CGRect(x: 0, y: 0, width: 200, height: 1500)
        scrollView.contentSize = CGSize(width: 200, height: 1500)
    }
    
    func checkWhatDifficulty() -> Int{
        if difficulty == "easy"{
            return 10
        }
        else if difficulty == "medium"{
            return 50
        }
        else{
            return 100
        }
    }
    
    
    @objc func tooHigh(){
        let alert = UIAlertController(title: "Try again!", message: "Too high!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true, completion: {})
    }

    @objc func justRight(){
        let alert = UIAlertController(title: "Congratulations!", message: "Just right", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true, completion: {})
    }
    
    @objc func tooLow(){
        let alert = UIAlertController(title: "Try again!", message: "Too low!", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        self.present(alert, animated: true, completion: {})
    }
    

    @objc func addButtons(){
        var randomNumber = Int.random(in: 1...checkWhatDifficulty())
        
        // Do any additional setup after loading the view.
        let buttons = (1...checkWhatDifficulty()).map({ (x) -> UIButton in
            
            let newButton = UIButton()
            newButton.setTitle("Button \(x)", for: .normal)
            newButton.setTitleColor(UIColor(displayP3Red: 0, green: 0, blue: 1, alpha:
                1), for: .normal)
            if x < randomNumber {
              buttonMessage.message = "Too low"
                newButton.addTarget(self, action: #selector(tooLow), for: .touchUpInside)
              }
              else if x > randomNumber {
                  buttonMessage.message = "Too high"
                newButton.addTarget(self, action: #selector(tooHigh), for: .touchUpInside)
              }
              else{
                  buttonMessage.message = "just right"
                newButton.addTarget(self, action: #selector(justRight), for: .touchUpInside)
              }
            return newButton
        })
        for button in buttons{
            manyButtons.addArrangedSubview(button)
            let constraint = NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: buttons[0], attribute: .height, multiplier: 1, constant: 0)
            
            if button != buttons[0] {
                manyButtons.addConstraint(constraint)
                
            }
            
        }
    }
    
    
}
