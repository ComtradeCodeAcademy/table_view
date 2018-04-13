//
//  ViewController.swift
//  TableViewWithGit
//
//  Created by Predrag Jevtic on 4/11/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import UIKit

class ShowsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
   
    let showList = [
    [
        
        
        "title": "Shameless",
        "time": "2 days",
        "image": "image1"
        ],
    
[
    
    "title": "Once upon a time",
    "time": "2 days",
    "image": "image2"
        ],

[
    
    "title": "Game of thrones",
    "time": "2 days",
    "image": "image3"
    
        ],
[
    
    "title": "Game of thrones",
    "time": "2 days",
    "image": "image4"
    
        ],
[
    
    "title": "Game of thrones",
    "time": "2 days",
    "image": "image5"
    
        ],
[
    
    "title": "Game of thrones",
    "time": "2 days",
    "image": "image6"
    
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
        return self.showList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "showItem", for: indexPath) as? ShowItemTableViewCell
        
        let show = self.showList[indexPath.row]
        
        
        cell?.imageView?.image = UIImage.init(named:show["image"]!)
        cell?.imageView?.contentMode = .scaleAspectFit
        cell?.titleLbl.text = show ["title"]
        cell?.timeLbl.text = show ["time"]
       
        
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100

    
    
    }
}
    
    

