//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
       
        playSound(soundname: sender.currentTitle!)
        
        sender.alpha = 0.5
        let timer = Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { (timer) in
                    sender.alpha = 1
                    }
    }
    
    func playSound(soundname:String) {
        let url = Bundle.main.url(forResource: soundname , withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}
