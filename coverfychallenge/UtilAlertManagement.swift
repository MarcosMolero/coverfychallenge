//
//  UtilAlertManagement.swift
//  coverfychallenge
//
//  Created by Marcos Molero on 2/5/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import Foundation
import UIKit

class UtilAlertManagement {
    
    static func commentNotValid(_ actualViewController: UIViewController) {
        let alert = UIAlertController(  title: "ALERT",
                                        message: "Some fields are empty",
                                        preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(  title: "I Agree",
                                        style: UIAlertActionStyle.default,
                                        handler: nil
        ))
        actualViewController.present(alert, animated: true, completion:nil)
    }
    
    static func commentSaved(_ actualViewController: UIViewController) {
        let alert = UIAlertController(  title: "SAVED",
                                        message: "Your comment has been saved",
                                        preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(  title: "I Agree",
                                        style: UIAlertActionStyle.default,
                                        handler:
            { (action: UIAlertAction!) in
                actualViewController.dismiss(animated: true, completion: nil)
        }))
        
        actualViewController.present(alert, animated: true, completion:nil)
    }
}
