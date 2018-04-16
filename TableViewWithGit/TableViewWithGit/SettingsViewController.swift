//
//  SettingsViewController.swift
//  TableViewWithGit
//
//  Created by Pedja Jevtic on 4/16/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let dataSet = [
        "profile":[
            "website": "http://google.com",
            "profileImage": "urlToImage",
            "descriptionText": "My shiny new post profile",
            "analytics": [
                "posts": 276,
                "followers":3000,
                "following":1050
            ]
        ],
        "posts":[
            [
            "imageURL":"somePath",
            "location": "1231",
            "tags": ["tag1", "tag2", "tag3"]
                ]
            , [
                "imageURL":"somePath",
                "location": "1231",
                "tags": ["tag5", "tag6", "tag7"]
            ]
            
        ]
        ] as [String : Any]
    
    let profileInfo = ""
    
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
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0{
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "analytic", for: indexPath)
            as! ProfileAnalyticTableViewCell
        
        
        
        cell.followersLbl.text = "followers"
        cell.followingLbl.text = "following"
        cell.postsLbl.text = "posts"
        
        cell.followersAmountLbl.text = "222"
        cell.followingAmountLbl.text = "199"
        cell.postsAmountLbl.text = "100"
        
        cell.profileImg.image = UIImage.init(named: "limitless")
        cell.profileImg.layer.cornerRadius = 35
        
        cell.followBttn.layer.cornerRadius = 5
        cell.followBttn.layer.borderWidth = 1
        cell.followBttn.layer.borderColor = UIColor.blue.cgColor
            
            
        
        return cell
        }
        
        if indexPath.row == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "profileInfo", for: indexPath)
                as! ProfileInfoTableViewCell
            
            cell.instGridLbl.text = "instagridsapp"
            cell.infoText.text = "cropp photos for instagram" + "\n" + "www.instagram.com"
            cell.urlLbl.text = "www.instagram.com"
            
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "post", for: indexPath)
            as! PostTableViewCell
        
        cell.postImg.image = UIImage.init(named: "limitless")

        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

}
