//
//  ViewController.swift
//  Sangeet
//
//  Created by Saumya Raval on 7/6/17.
//  Copyright © 2017 Aashal Saumya. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton!
    
    var playerItem: AVPlayerItem!
    var player: AVPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
         let url = NSURL(string: "https://firebasestorage.googleapis.com/v0/b/fir-sociallogin-ae127.appspot.com/o/05%20Cutiepie%20(Ae%20Dil%20Hai%20Mushkil).mp3?alt=media&token=1cac8470-08d4-4482-9cf5-91de3569dde7")
        
        playerItem = AVPlayerItem(url: url! as URL)
        player = AVPlayer(playerItem: playerItem)
        
        let playerLayer = AVPlayerLayer(layer: player)
        playerLayer.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        self.view.layer.addSublayer(playerLayer)
        
        playButton.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
    }
    
    @objc func playButtonTapped(sender: AnyObject) {
        if player.rate == 0 {
            player.play()
            playButton.setImage(UIImage(named: "noun_860208_cc"), for: .normal)
        } else {
            player.pause()
            playButton.setImage(UIImage(named: "noun_860179_cc"), for: .normal)
        }
    }
    
}

