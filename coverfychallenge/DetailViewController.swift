//
//  DetailViewController.swift
//  coverfychallenge
//
//  Created by Marcos Molero on 27/4/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // MARK: - IBOutlet var
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Global var
    var detailItem: Post? {
        didSet {
            configureView()
        }
    }

    // MARK: - Override Func
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    // MARK: - Support Func
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
    
    // MARK: - Segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addComment" {
                let post = detailItem
                let controller = (segue.destination as! UINavigationController).topViewController as! AddViewController
                controller.selectedPost = post
        }
    }
    
    // MARK: - UITableView Delegate
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return detailItem!.listOfComments.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! CustomCell
        
        cell.emailLabel.text    = detailItem?.listOfComments[indexPath.row].email
        cell.commentLabel.text  = detailItem?.listOfComments[indexPath.row].body
        
        return cell
    }

}

