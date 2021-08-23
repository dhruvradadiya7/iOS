//
//  ViewController.swift
//  WebView
//
//  Created by Jeet on 19/09/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {
    var webView:WKWebView!

    @IBOutlet weak var myview: UIWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url1 = URL(string: "https://www.gmail.com")!
        webView.load(URLRequest(url: url1))
        //myview.loadRequest(URLRequest(url: url1))
        
    
       
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

