//
//  CustomCell.swift
//  coverfychallenge
//
//  Created by Marcos on 2/5/17.
//  Copyright © 2017 marcosmolero. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
