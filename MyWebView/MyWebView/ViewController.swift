//
//  ViewController.swift
//  MyWebView
//
//  Created by Jeet on 19/09/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {
    @IBOutlet weak var webaddress: UITextField!
    
    @IBOutlet weak var webview2: UIWebView!
    @IBOutlet weak var myweb: UIWebView!
    var webView:WKWebView!
    
    @IBOutlet weak var webaddress2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myurl = URL(string: "https://www.google.com")
        myweb.loadRequest(URLRequest(url: myurl!))
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func go(_ sender: Any) {
        
        if (webaddress.text?.contains("http://www."))! == false
        {
        let mstring = "http://www."+webaddress.text!
        let url = URL(string: mstring)
        webaddress.text! = mstring
        myweb.loadRequest(URLRequest(url: url!))
        } else {
            let url = URL(string: webaddress.text!)
            myweb.loadRequest(URLRequest(url: url!))
        }
        
    }
    
    @IBAction func go2(_ sender: Any) {
        
        let url = URL(string: webaddress2.text!)
        webview2.loadRequest(URLRequest(url: url!))
    }
    
}

