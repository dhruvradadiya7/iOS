//
//  ViewController.swift
//  PlayVideo
//
//  Created by Jeet on 08/10/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var path:String?
    let list:[String] = ["Agile","Test Case","Testing","Sixth Sene"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(list.count)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: "tableView1")
        cell.textLabel!.text = list[indexPath.row]
        return(cell)
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedvideo = list[indexPath.row]
        if(selectedvideo == "Agile"){
            path = Bundle.main.path(forResource: "Agile", ofType: "mp4")
        }
        if(selectedvideo == "Test Case")
        {
            path = Bundle.main.path(forResource: "Test Case", ofType: "mp4")
        }
        if(selectedvideo == "Testing"){
            path = Bundle.main.path(forResource: "Testing", ofType: "mp4")
        }
        if(selectedvideo == "Sixth Sense")
        {
            path = Bundle.main.path(forResource: "SixthSense", ofType: "mp4")
        }
        let player = AVPlayer(url:URL(fileURLWithPath: path!))
        let vc = AVPlayerViewController()
        vc.player = player
        present(vc,animated: true){vc.player?.play()}
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

