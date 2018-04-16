//
//  ViewController.swift
//  TableViewWithGit
//
//  Created by Predrag Jevtic on 4/11/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import UIKit

class ShowsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    let shows = [
        [
            "name": "Game of Thrones" ,
            "time": "2 days ago",
            "image": "game-of-thrones"
        ],
        [
            "name": "Game of Thrones" ,
            "time": "3 days ago",
            "image": "game-of-thrones"
        ],
        [
            "name": "Limitless" ,
            "time": "6 days ago",
            "image": "limitless",
        ],
        [
            "name": "Lost in space" ,
            "time": "1 days ago",
            "image": "LostInSpace",
            "isFavorite": "true"
        ]
        
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shows.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellID = indexPath.row == 2 ? "showPromo" : "show"
    
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as? ShowTableViewCell
        
        let show = self.shows[indexPath.row]
        
        cell?.nameLbl.text = show["name"]
        cell?.timeLbl.text = show["time"]
        cell?.backgroundImage.image = UIImage.init(named: show["image"]!)
        
        if (show["isFavorite"] != nil) {
            cell?.favoriteImg.isHidden = false
        }
        
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 2 ? 300 : 90
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let show = self.shows[indexPath.row]
        
        self.performSegue(withIdentifier: "showDetails", sender: show)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let showDetailsVC = segue.destination as! ShowDetailsViewController
        
        showDetailsVC.tvShow = sender as! [String: String]
        
    }
    
}

