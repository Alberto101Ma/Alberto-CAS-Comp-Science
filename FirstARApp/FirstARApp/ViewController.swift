//
//  ViewController.swift
//  FirstARApp
//
//  Created by Alberto Mancarella on 3/9/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import UIKit
import SceneKit
import ARKit


class ViewController: UIViewController, ARSCNViewDelegate {

    @IBOutlet weak var sceneView: ARSCNView!

    override func viewDidLoad() {
        super.viewDidLoad()
        sceneView.delegate = self
        let scene = SCNScene(named: "arresources.scnassets/blank.scn")
        sceneView.scene = scene!
        // Do any additional setup after loading the view.
        
        
    }


}

