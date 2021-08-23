//
//  ViewController.swift
//  Navigate
//
//  Created by Jeet on 20/09/18.
//  Copyright © 2018 Jeet. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var s1:AVAudioPlayer?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func play(_ sender: Any) {
        let path = Bundle.main.path(forResource: "Blop.mp3", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            s1 = try AVAudioPlayer(contentsOf: url)
            s1?.play()
        } catch {
            // couldn't load file :(
        }
    }
    
}

