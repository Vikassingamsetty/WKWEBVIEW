//
//  SecondViewController.swift
//  WKWebVIew
//
//  Created by Srans022019 on 23/05/20.
//  Copyright © 2020 vikas. All rights reserved.
//

import UIKit
import WebKit

class SecondViewController: UIViewController {

    var webView : WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //To fix the layout when using navigation bar
        self.edgesForExtendedLayout = []
        
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        
        //Creating webview with url
        webView = WKWebView(frame: view.bounds, configuration: config)
        self.view = webView
        
        let request = URLRequest(url: URL(string: "https://apple.com")!)
        webView.load(request)
    }


}
