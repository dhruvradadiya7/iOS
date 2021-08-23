//
//  viewContrller2.swift
//  SQLITEDB
//
//  Created by Jeet on 13/08/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import Foundation

import UIKit
import SQLite3

class viewContrller2:UIViewController{
    var dppointer:OpaquePointer?
    override func viewDidLoad() {
        let dbfile = try!
            FileManager.default.url(for:.documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("rku.sqlite")
        sqlite3_open(dbfile.path,&dppointer)
        print("Database opened")
       
        //var queryStatement:OpaquePointer?
        if sqlite3_prepare_v2(dppointer, "SELECT * FROM student", -1, &dppointer, nil) == SQLITE_OK {
            // 2
            if (sqlite3_step(dppointer) == SQLITE_ROW) {
                let id = sqlite3_column_int(dppointer, 0)
                let queryResultCol1 = sqlite3_column_text(dppointer, 0)
                let name = String(cString: queryResultCol1!);
                print("\(id) | \(name)")
                print("db retrived")
            }
        }

    }
    
}
