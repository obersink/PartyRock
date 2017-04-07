//
//  ViewController.swift
//  PartyRock
//
//  Created by Simon Zhen on 4/6/17.
//  Copyright © 2017 Simon Zhen. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
            //partyrock model element
            let partyRock = partyRocks[indexPath.row]
            
            //sets title, video url, etc
            cell.updateUI(partyRock: partyRock)
            return cell
        }
        //recycled cell
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }
}

