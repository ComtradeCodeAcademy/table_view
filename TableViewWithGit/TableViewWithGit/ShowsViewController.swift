//
//  ViewController.swift
//  TableViewWithGit
//
//  Created by Predrag Jevtic on 4/11/18.
//  Copyright © 2018 com.comtrade.CodeAcademy. All rights reserved.
//

import UIKit

class ShowsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    let textMessages = ["once upon a time", "sheamless", "Bates motel", "Preety little liars", "game of thrones"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1") as?
        
        return cell
        
    
    }
}



