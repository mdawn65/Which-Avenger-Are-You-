//
//  ViewController.swift
//  What_avenger_are_you
//
//  Created by Maggie Dong on 5/29/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
        
    var audioPlayer: AVAudioPlayer?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBAction func unwindToQuizIntroduction(unwindSegue: UIStoryboardSegue) {
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var imageNames = ["avengers01", "avengers02", "avengers03", "avengers04", "avengers05"]
        var images = [UIImage]()
        for i in 0..<imageNames.count {
            images.append(UIImage(named: imageNames[i])!)
        }
        imageView.animationImages = images
        imageView.animationDuration = 1.2
        imageView.startAnimating()
        
        
        let url = URL.init(fileURLWithPath: Bundle.main.path(forResource: "loop_color_sound", ofType: "mp3")!)
        
        do {
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            audioPlayer?.delegate = self
            audioPlayer?.prepareToPlay()
            audioPlayer?.numberOfLoops = -1
        } catch let error as NSError {
            print("audioPlayer error \(error.localizedDescription)")
        }
        if let player = audioPlayer {
            player.play()
        }
    }
    
}

