//
//  ShowItemTableViewCell.swift
//  TableViewWithGit
//
//  Created by O on 4/13/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import UIKit

class ShowItemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
   
    }

