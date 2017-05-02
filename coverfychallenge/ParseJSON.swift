//
//  ParseJSON.swift
//  coverfychallenge
//
//  Created by Marcos on 2/5/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import Foundation
import SwiftyJSON

class ParseJSON {
    
    static func parsePosts(_ jsonObject:JSON) {
        let instanceAppSingleton = AppSingleton.sharedInstance
        
        for item in jsonObject.arrayValue {
            let post    :Post = Post()
            post.id     = item["id"].intValue
            post.userID = item["userID"].intValue
            post.title  = item["title"].stringValue
            post.body   = item["body"].stringValue
            
            instanceAppSingleton.listOfPost.append(post)
        }
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: postOk), object: self)
    }
    
    static func parseComments(_ jsonObject:JSON) {
        let instanceAppSingleton = AppSingleton.sharedInstance
        
        for item in jsonObject.arrayValue {
            let comment    :Comment = Comment()
            comment.id     = item["id"].intValue
            comment.postId = item["postId"].intValue
            comment.name   = item["name"].stringValue
            comment.email  = item["email"].stringValue
            comment.body   = item["body"].stringValue
            
            instanceAppSingleton.listOfComment.append(comment)
        }
    }
    
}
