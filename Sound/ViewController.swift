//
//  ViewController.swift
//  Sound
//
//  Created by Ririko Nagaishi on 2021/01/27.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet var drumBottun: UIButton!
    
    let drumSoundPlayer = try! AVAudioPlayer (data: NSDataAsset (name: "drumSound")!.data)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func touchDownDrumBottun() {
        
        drumBottun.setImage(UIImage(named: "drumPlayingImage"), for: .normal)
   
        drumSoundPlayer.currentTime = 0
        
        drumSoundPlayer.play()
    }
    
        @IBAction func touchUpDrumButton () {
        
            drumBottun.setImage(UIImage(named: "drumImage"), for: .normal)
        }
        
    }


