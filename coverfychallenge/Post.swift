//
//  Post.swift
//  coverfychallenge
//
//  Created by Marcos Molero on 27/4/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import Foundation

class Post {
    
    var userID          :Int
    var id              :Int
    var title           :String
    var body            :String
    var listOfComments  :[Comment]
    
    init() {
        self.userID         = Int()
        self.id             = Int()
        self.title          = String()
        self.body           = String()
        self.listOfComments = [Comment]()
    }
}
