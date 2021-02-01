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
    
    
    @IBOutlet var pianoButton: UIButton!
    
    
    @IBOutlet var guitarBottun: UIButton!
    
    
    let drumSoundPlayer = try! AVAudioPlayer (data: NSDataAsset (name: "drumSound")!.data)
    
    
    let pianoSoundPlayer = try! AVAudioPlayer (data: NSDataAsset (name: "pianoSound")!.data)
    
    
    let guitarSoundPlayer = try! AVAudioPlayer (data: NSDataAsset (name: "guitarSound")!.data)
    
    
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
        
    
    @IBAction func touchDownPianoButton() {
  
        pianoButton.setImage(UIImage(named: "pianoPlayingImage"), for: .normal)
   
        pianoSoundPlayer.currentTime = 0
        
        pianoSoundPlayer.play()
    }
    
    @IBAction func touchUpPianoButton () {
        
        pianoButton.setImage(UIImage(named: "pianoImage"), for: .normal)

}

    @IBAction func touchDownGuitarButton() {
  
        guitarBottun.setImage(UIImage(named: "guitarPlayingImage"), for: .normal)
   
        guitarSoundPlayer.currentTime = 0
        
        guitarSoundPlayer.play()
    }
    
    @IBAction func touchUpGuitarButton () {
        
        guitarBottun.setImage(UIImage(named: "guitarImage"), for: .normal)

}


}
