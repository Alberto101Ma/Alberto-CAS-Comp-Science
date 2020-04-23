//
//  SaveScore.swift
//  Snake
//
//  Created by Alberto Mancarella on 4/23/20.
//  Copyright © 2020 Alberto Mancarella. All rights reserved.
//

import Foundation

func SaveScore() -> URL{
    let documentURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
    return documentURL.appendingPathComponent("BestScore.txt")
}



