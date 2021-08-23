//
//  ViewController.swift
//  RKClass
//
//  Created by Jeet on 17/07/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var userid: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       // Do any additional setup after loading the view, typically from a nib
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submit(_ sender: Any) {
        
        var uid = userid.text!
        print(uid)
        //if (userid.text?.elementsEqual("dmn"))!
        /*
        {
            
            let nc = self.storyboard!.instantiateViewController(withIdentifier: "vc")
            self.present(nc, animated: true, completion: nil)
            
        } else{
            
            let alert = UIAlertController(title: "Alert", message: "Invalid Username or Password", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            
        }*/
        
    }
    
}

