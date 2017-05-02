//
//  MasterViewController.swift
//  coverfychallenge
//
//  Created by Marcos Molero on 27/4/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import UIKit

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    let instanceAppSingleton = AppSingleton.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if instanceAppSingleton.listOfPost.isEmpty {
            downloadContent()
        }

        if let split = splitViewController {
            let controllers = split.viewControllers
            detailViewController = (controllers[controllers.count-1] as! UINavigationController).topViewController as? DetailViewController
        }
    }

    override func viewWillAppear(_ animated: Bool) {
        clearsSelectionOnViewWillAppear = splitViewController!.isCollapsed
        super.viewWillAppear(animated)
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func downloadContent() {
        NotificationCenter.default.addObserver(self, selector: #selector(MasterViewController.PostsAvailable), name: NSNotification.Name(rawValue: postOk), object: nil)
        
        let webServiceCommunication :WebServiceCommunication = WebServiceCommunication()
        webServiceCommunication.getPosts()
        webServiceCommunication.getComments()
    }
    
    func PostsAvailable() {
        self.tableView.reloadData()
    }

    // MARK: - Segues
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let post = instanceAppSingleton.listOfPost[indexPath.row]
                
                let controller = (segue.destination as! UINavigationController).topViewController as! DetailViewController
                controller.detailItem = post
                
                controller.navigationItem.leftBarButtonItem = splitViewController?.displayModeButtonItem
                controller.navigationItem.leftItemsSupplementBackButton = true
            }
        }
    }

    // MARK: - Table View
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return instanceAppSingleton.listOfPost.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel!.text = instanceAppSingleton.listOfPost[indexPath.row].title
        
        //TODO: Añadir primeros 80 carácteres del body.
        
        return cell
    }
}

