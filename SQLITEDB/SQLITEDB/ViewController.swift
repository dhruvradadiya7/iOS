//
//  ViewController.swift
//  SQLITEDB
//
//  Created by Jeet on 08/08/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import UIKit
import SQLite3

class ViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var mNo: UITextField!
    var dbpointer:OpaquePointer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submit(_ sender: Any) {
    
        let dbfile = try!
            FileManager.default.url(for:.documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("rku.sqlite")
        sqlite3_open(dbfile.path,&dbpointer)
        
        print("Database Created")
        
        let str = "create table if not exists student(fname text,lname text,mno text)"
        sqlite3_exec(dbpointer, str, nil, nil, nil)
        print("Table Created")
        
        let insertquery =
        "insert into student values('\(firstName.text!)','\(lastName.text!)','\(mNo.text!)')"
        
        sqlite3_exec(dbpointer, insertquery, nil, nil, nil)
        
        print("Record Inserted")
        
    
    }
    
    
    
}

