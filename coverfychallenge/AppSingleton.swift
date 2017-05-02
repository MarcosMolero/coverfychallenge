//
//  AppSingleton.swift
//  coverfychallenge
//
//  Created by Marcos Molero on 27/4/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import Foundation

class AppSingleton {
    static let sharedInstance   :AppSingleton = AppSingleton()
    
    var listOfPost      :[Post]
    var listOfComment   :[Comment]
    
    init() {
        self.listOfPost     = [Post]()
        self.listOfComment  = [Comment]()
    }
}
