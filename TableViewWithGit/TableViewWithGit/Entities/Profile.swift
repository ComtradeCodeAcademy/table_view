//
//  Profile.swift
//  TableViewWithGit
//
//  Created by Pedja Jevtic on 4/18/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import Foundation

struct Profile {
    var website: String = ""
    var profileImage: String
    var descriptionText: String
    var analytics: Analytics
    
    var posts: [Post]
    
    init(profileImage: String, analytics: Analytics, descriptionText: String = "", posts: [Post] = [] ) {
        
        self.profileImage = profileImage
        self.descriptionText = descriptionText
        self.posts = posts
        self.analytics = analytics
    }
}

