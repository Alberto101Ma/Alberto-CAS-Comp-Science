//
//  GameManager.swift
//  Snake
//
//  Created by Alberto Mancarella on 4/15/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import SpriteKit
//print test
class GameManager {
    var scene: GameScene!
    
    init(scene: GameScene) {
        self.scene = scene
    }
    
    func initGames() {
        playerPositions.append((10, 10))
        playerPositions.append((10, 11))
        playerPositions.append((10, 12))
        renderChange()
    }
    
    func renderChange() {
        for (node, x, y) in gameArray {
            if contains(a: playerPositions, v: (x,y)) {
                node.fillColor = SKColor.cyan
            } else{
                node.fillColor = SKColor.clear
            }
            
        }
    }
    
    func contains(a:[(Int, Int)], v:(Int,Int)) -> Bool {
        let (c1, c2) = v
        for (v1, v2) in a { if v1 == c1 && v2 == c2 { return true } }
        return false
    }
}
