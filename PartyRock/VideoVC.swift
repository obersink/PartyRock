//
//  VideoVC.swift
//  PartyRock
//
//  Created by Simon Zhen on 4/7/17.
//  Copyright © 2017 Simon Zhen. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    //MARK: OUTLETS
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK: PROPERTIES
    var partyRock: PartyRock!
    
    //MARK: METHODS
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = partyRock.videoTitle
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
    }
}

//MARK: WEB VIEW
extension VideoVC: UIWebViewDelegate {
    func webViewDidFinishLoad(_ webView: UIWebView) {
        let css = ".container {position: relative; width: 100%; height: 0; padding-bottom: 56.25%;} .video { position: absolute; top: 0; left: 0; width: 100%; height: 100%;}"
        let js = "var styleNode = document.createElement('style');\n"
            + "styleNode.type = \"text/css\";\n"
            + "var styleText = document.createTextNode('\(css)');\n"
            + "styleNode.appendChild(styleText);\n"
            + "document.getElementsByTagName('head')[0].appendChild(styleNode);\n"
        webView.stringByEvaluatingJavaScript(from: js)
    }
}
