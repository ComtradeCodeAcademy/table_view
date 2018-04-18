//
//  SettingsViewController.swift
//  TableViewWithGit
//
//  Created by Pedja Jevtic on 4/16/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
//    var profile: Profile = Profile.init(profileImage: "limitless", analytics: Analytics.init(posts: 5, followers: 1, following: 18))
    
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
            ,
            [
                "imageURL":"somePath",
                "location": "1231",
                "tags": ["tag5", "tag6", "tag7"]
            ]
            
        ]
        ] as [String : Any]
    
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
    
    //MARK: - TODO:  TableView Delegates
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if let posts = dataSet["posts"] as? [[String: Any]] {
            return posts.count + 2
        }
        
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
        case 0:
            let cell = self.initProfileCell(data: self.dataSet, tableView: tableView, indexPath: indexPath)
            return cell
        case 1:
            let cell = self.initDetailsCell(data: self.dataSet, tableView: tableView, indexPath: indexPath)
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "analytic", for: indexPath)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    //MARK: - Custom Cells
    func initProfileCell(data:[String : Any], tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
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
    
    func initDetailsCell(data:[String : Any], tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
     
        let cell = tableView.dequeueReusableCell(withIdentifier: "profileInfo", for: indexPath)
        
        return cell
    }
}
