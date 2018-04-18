//
//  ProfileInfoTableViewCell.swift
//  TableViewWithGit
//
//  Created by Student 04 on 4/16/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import UIKit

class ProfileInfoTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var instGridLbl: UILabel!
    
    @IBOutlet weak var infoText: UITextView!
    
    @IBOutlet weak var urlLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
