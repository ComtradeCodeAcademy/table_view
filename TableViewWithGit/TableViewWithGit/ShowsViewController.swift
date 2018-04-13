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
            "time": "2 days ago",
            "image": "game-of-thrones"
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "show", for: indexPath) as? ShowTableViewCell
        
        let show = self.shows[indexPath.row]
        
        cell?.nameLbl.text = show["name"]
        cell?.timeLbl.text = show["time"]
        cell?.backgroundImage.image = UIImage.init(named: show["image"]!)
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
}

