//
//  ViewController.swift
//  PartyRock
//
//  Created by Simon Zhen on 4/6/17.
//  Copyright © 2017 Simon Zhen. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var partyRocks = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        partyRocks = PartyRock.loadPartyRocks()
        //set in storyboard
        //tableView.delegate = self
        //tableView.dataSource = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let videoVC = segue.destination as? VideoVC {
            if let party = sender as? PartyRock {
                videoVC.partyRock = party
            }
        }
    }
}

//MARK: TABLE VIEW
extension MainVC: UITableViewDelegate, UITableViewDataSource {
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let partyRock = partyRocks[indexPath.row]
        performSegue(withIdentifier: "SegueToVideoVC", sender: partyRock)
    }
}
