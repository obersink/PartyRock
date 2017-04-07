//
//  PartyCellTableViewCell.swift
//  PartyRock
//
//  Created by Simon Zhen on 4/7/17.
//  Copyright © 2017 Simon Zhen. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoThumbnail: UIImageView!
    @IBOutlet weak var videoTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    //partyrock is the data/model
    func updateUI(partyRock: PartyRock) {
        videoTitle.text = partyRock.videoTitle
        
    }

}
