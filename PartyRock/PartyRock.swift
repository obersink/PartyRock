//
//  PartyRock.swift
//  PartyRock
//
//  Created by Simon Zhen on 4/7/17.
//  Copyright © 2017 Simon Zhen. All rights reserved.
//

import Foundation

class PartyRock {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imgURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imageURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}

extension PartyRock {
    
    private static func createHTMLWithURLString(videoURL: String) -> String {
        return "<div class=\"container\"><iframe class=\"video\" src=\"\(videoURL)\" frameborder=\"0\" allowfullscreen></iframe></div>"
    }
    
    static func loadPartyRocks() -> [PartyRock] {
        let p1 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: createHTMLWithURLString(videoURL: "https://www.youtube.com/embed/ev4bY1SkZLg"), videoTitle: "Lights Out")
        
        let p2 = PartyRock(imageURL: "http://www.croshalgroup.com/wp-content/uploads/2015/05/Redfoo-Website.jpg", videoURL: createHTMLWithURLString(videoURL: "https://www.youtube.com/embed/1w9DiGlZksU"), videoTitle: "Let's Get Ridiculous")
        
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/2wUxw6GH3IM/hqdefault.jpg", videoURL: createHTMLWithURLString(videoURL: "https://www.youtube.com/embed/vg_nvEGryA4"), videoTitle: "Juicy Wiggle Lesson")
        
        let p4 = PartyRock(imageURL: "http://www.billboard.com/files/styles/article_main_image/public/media/lmfao-party-rock-anthem-2011-billboard-650.jpg", videoURL: createHTMLWithURLString(videoURL: "https://www.youtube.com/embed/gZIqW92GaTQ"), videoTitle: "Party Rock Commercial")
        
        let p5 = PartyRock(imageURL: "http://direct-ns.rhap.com/imageserver/v2/albums/Alb.219913217/images/600x600.jpg", videoURL: createHTMLWithURLString(videoURL: "https://www.youtube.com/embed/tWyuglGCKgE"), videoTitle: "Juicy Wiggle")
        
        return [p1, p2, p3, p4, p5]
    }
}
