//
//  DetailViewController.swift
//  coverfychallenge
//
//  Created by Marcos Molero on 27/4/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyLabel: UILabel!

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

    var detailItem: Post? {
        didSet {
            configureView()
        }
    }


}

