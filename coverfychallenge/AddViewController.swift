//
//  AddViewController.swift
//  coverfychallenge
//
//  Created by Marcos on 2/5/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    // MARK: - IBOutlet var
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var bodyField: UITextField!
    
    // MARK: - Global var
    var selectedPost    :Post?
    
    // MARK: - Override Func
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - IBAction Func
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        
        if (nameField.text?.isEmpty)! || (emailField.text?.isEmpty)! || (bodyField.text?.isEmpty)! {
            UtilAlertManagement.commentNotValid(self)
        } else {
            
            let comment :Comment = Comment()
            comment.postId  = (selectedPost?.id)!
            comment.name    = nameField.text!
            comment.email   = emailField.text!
            comment.body    = bodyField.text!
            comment.id      = (selectedPost?.listOfComments.count)! + 1
            
            selectedPost?.listOfComments.append(comment)
            
            UtilAlertManagement.commentSaved(self)
        }        
    }
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
