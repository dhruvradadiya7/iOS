//
//  ViewController.swift
//  UIPickerUIWebview
//
//  Created by Jeet on 26/09/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate {
    
    @IBOutlet weak var webview1: UIWebView!
    var list:[String] = ["Google", "Yahoo","Gmail"]
    var selectedwebsite:String?
    var myurl:URL? = nil
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return(list.count)
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return list[row] as String
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedwebsite = list[row] as String
        
       if(selectedwebsite! == "Google")
        {
         myurl = URL(string: "https://www.google.com")
         
        }
        if(selectedwebsite! == "Yahoo")
        {
            myurl = URL(string: "https://in.yahoo.com")
        }
        if(selectedwebsite! == "Gmail")
        {
            myurl = URL(string: "https://www.gmail.com")
        }
        webview1.loadRequest(URLRequest(url: myurl!))
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

