//
//  ViewController.swift
//  VPlayer
//
//  Created by Jeet on 08/10/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func play(_ sender: Any) {
        
        let path = Bundle.main.path(forResource: "videoplayback", ofType: "mp4")
        let player = AVPlayer(url:URL(fileURLWithPath: path!))
        
        let playercontroller = AVPlayerViewController()
        playercontroller.player = player
        self.addChild(playercontroller)
        self.view.addSubview(playercontroller.view)
        
        let playerlayer = AVPlayerLayer(player: player)
        playerlayer.frame  = self.view.bounds
        self.view.layer.addSublayer(playerlayer)
        
        player.play()
        
        
        
    }
    
}

