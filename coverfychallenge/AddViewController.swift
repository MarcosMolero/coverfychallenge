//
//  AddViewController.swift
//  coverfychallenge
//
//  Created by Marcos on 2/5/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var bodyField: UITextField!
    
    @IBAction func saveButton(_ sender: UIBarButtonItem) {
        print("Data is saved!")
        let comment :Comment = Comment()
        comment.postId  = (selectedPost?.id)!
        comment.name    = nameField.text!
        comment.email   = emailField.text!
        comment.body    = bodyField.text!
        comment.id      = (selectedPost?.listOfComments.count)! + 1
        
        selectedPost?.listOfComments.append(comment)
        
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    var selectedPost    :Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
