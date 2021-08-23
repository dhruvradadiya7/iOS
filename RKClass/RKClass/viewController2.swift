//
//  viewController2.swift
//  RKClass
//
//  Created by Jeet on 18/07/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import Foundation

import  UIKit

class ViewController2:UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    let list = ["Computer","Information","Elec Communication"]
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "tableView1")
        cell.textLabel!.text = list[indexPath.row]
        return(cell)
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let nc2 = self.storyboard!.instantiateViewController(withIdentifier: "viewController1")
        self.present(nc2, animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
    
    }
}
