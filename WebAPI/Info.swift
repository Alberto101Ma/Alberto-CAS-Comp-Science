//
//  Info.swift
//  WebAPI
//
//  Created by Alberto Mancarella on 12/20/19.
//  Copyright © 2019 Alberto Mancarella. All rights reserved.
//

import Foundation

class Starwars{
    var title: String
    var director: String
    var producer: String
    var episodenumber: Int
    init(title: String, director: String, producer: String, episodenumber: Int) {
        self.title = title
        self.director = director
        self.producer = producer
        self.episodenumber = episodenumber
    }
}
