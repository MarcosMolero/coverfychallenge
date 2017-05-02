//
//  DetailViewController.swift
//  coverfychallenge
//
//  Created by Marcos Molero on 27/4/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!

    func configureView() {
        if let detail = detailItem {
            if let title = titleLabel {
                title.text = detail.title
            }
            
            if let body = bodyLabel {
                body.text = detail.body
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell
               
        cell.email.text = "Hello@mytest.com"
        cell.comment.text = "This is a static test"
        
        return cell
    }
    
    var detailItem: Post? {
        didSet {
            configureView()
        }
    }


}

