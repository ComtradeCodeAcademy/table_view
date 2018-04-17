//
//  PostTableViewCell.swift
//  TableViewWithGit
//
//  Created by Student 04 on 4/16/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import UIKit

class PostTableViewCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
