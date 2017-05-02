//
//  WebServiceCommunication.swift
//  coverfychallenge
//
//  Created by Marcos on 2/5/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

let connectionFailure   :String = "com.marcosmolero.connectionFailure"
let postOk              :String = "com.marcosmolero.postOk"

class WebServiceCommunication {
    
    func getPosts() {
        let url         :URL = URL(string: AppConstants.appConnection.WS_URL_POSTS)!

        Alamofire.request(url)
            .validate()
            .responseJSON { response in
                switch response.result {
                case .success:
                    if ((response.response?.statusCode)! >= 200 && (response.response?.statusCode)! < 300) {
                        let jsonObject = JSON(data: response.data!)
                        ParseJSON.parsePosts(jsonObject)
                    }
                    break
                case .failure(let error):
                    NotificationCenter.default.post(name: NSNotification.Name(rawValue: connectionFailure), object: self)
                    print(error)
                    break
                }
        }
        
    }
    
    func getComments() {
        let url         :URL = URL(string: AppConstants.appConnection.WS_URL_COMMENTS)!
        
        Alamofire.request(url)
            .validate()
            .responseJSON { response in
                switch response.result {
                case .success:
                    if ((response.response?.statusCode)! >= 200 && (response.response?.statusCode)! < 300) {
                        let jsonObject = JSON(data: response.data!)
                        ParseJSON.parseComments(jsonObject)                        
                    }
                    break
                case .failure(let error):
                    NotificationCenter.default.post(name: NSNotification.Name(rawValue: connectionFailure), object: self)
                    print(error)
                    break
                }
        }
    }
    
}
