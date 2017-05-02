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
        // TODO: Añadir los datos en el post.listOfComments correspondiente
        
    }
    
    @IBAction func cancelButton(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
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
