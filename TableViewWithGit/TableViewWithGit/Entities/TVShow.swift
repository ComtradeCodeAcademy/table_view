//
//  TVShow.swift
//  TableViewWithGit
//
//  Created by Pedja Jevtic on 4/18/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import Foundation

struct TVShow {
    var name: String
    var time: String
    var imageURL: String
    
    var isFavorite = false
    
    init(name: String, time: String, imageURL: String, isFavorite: Bool = false) {
        self.name = name
        self.imageURL = imageURL
        self.time = time
        self.isFavorite = isFavorite
    }
}
