//
//  Comment.swift
//  coverfychallenge
//
//  Created by Marcos Molero on 27/4/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import Foundation

class Comment {
    
    var postId  :Int
    var id      :Int
    var name    :String
    var email   :String
    var body    :String
    
    init() {
        self.postId = Int()
        self.id     = Int()
        self.name   = String()
        self.email  = String()
        self.body   = String()
    }
}
