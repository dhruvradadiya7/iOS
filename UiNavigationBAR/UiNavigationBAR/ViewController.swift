//
//  ViewController.swift
//  UiNavigationBAR
//
//  Created by Jeet on 21/09/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var mywebview2: UIWebView!
    @IBOutlet weak var webaddress2: UITextField!
    @IBOutlet weak var webaddress: UITextField!
    
    @IBOutlet weak var mywebview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func search(_ sender: Any) {
        
        //var add = webaddress.text!
        
        if(webaddress.text?.contains("https://www") == false){
        //Url
            let myurl = URL(string: "https://www."+webaddress.text!)
        //Url -> our webview
        mywebview.loadRequest(URLRequest(url: myurl!))
        }
    }
    @IBAction func search2(_ sender: Any) {
        
        let myurl = URL(string: webaddress2.text!)
        mywebview2.loadRequest(URLRequest(url: myurl!))
    }
    
}

