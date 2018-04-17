//
//  ProfileAnalyticTableViewCell.swift
//  TableViewWithGit
//
//  Created by Pedja Jevtic on 4/16/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import UIKit

class ProfileAnalyticTableViewCell: UITableViewCell {

    @IBOutlet weak var followingAmountLbl: UILabel!
    @IBOutlet weak var followingLbl: UILabel!
    
    @IBOutlet weak var followersAmountLbl: UILabel!
    @IBOutlet weak var followersLbl: UILabel!
    
    @IBOutlet weak var postsAmountLbl: UILabel!
    @IBOutlet weak var postsLbl: UILabel!

    @IBOutlet weak var profileImg: UIImageView!
    
    @IBOutlet weak var followBttn: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
