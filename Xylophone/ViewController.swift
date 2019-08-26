//
//  ViewController.swift
//  Xylophone
//
//  Created by Praveen J on 26/08/19.
//  Copyright © 2019 Praveen J. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    let soundArray = ["note1.wav", "note2.wav", "note3.wav", "note4.wav", "note5.wav", "note6.wav", "note7.wav"]
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func notePressed(_   sender: UIButton) {
        playSound(fileName: soundArray[sender.tag - 1])
    }
    
    func playSound(fileName: String) {
        let path = Bundle.main.path(forResource: fileName, ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch {
            print(error)
        }
    }

}

