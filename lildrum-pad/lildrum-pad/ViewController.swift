//
//  ViewController.swift
//  lildrum-pad
//
//  Created by Gabe Crowell on 07/5/19.
//  Copyright © 2019 Gabe Crowell. All rights reserved.
//
import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    var selectedSound : String = ""
    var player: AVAudioPlayer!
    let sounds = ["sound1", "sound2", "sound3", "sound4", "sound5", "sound6", "sound7", "sound8", "sound9", "sound10", "sound11", "sound12", "sound13", "sound14", "sound15"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func notePressed(_ sender: UIButton) {
        selectedSound = sounds[sender.tag - 1]
        playSound()
    }
    
    func playSound() {
        let soundPath = Bundle.main.url(forResource: selectedSound, withExtension: "wav")!
        do {
            player = try AVAudioPlayer(contentsOf: soundPath)
            guard let player = player else { return }
            
            player.prepareToPlay()
            player.play()
        } catch {
            print(error)
        }
        player.play()
    }
  

}
