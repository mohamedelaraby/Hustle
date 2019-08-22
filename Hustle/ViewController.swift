//
//  ViewController.swift
//  Hustle
//
//  Created by Winston on 8/22/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    /*-----------------[ @Outlets ]---------------------*/
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudsHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLabel: UILabel!
    @IBOutlet weak var ONLabel: UILabel!
    
    /*-----------------[ @Custom instances ]---------------------*/
    var player: AVAudioPlayer!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //test the sound
        playAudio()
    }

       /*-----------------[ @Actions ]---------------------*/
    // @powerButtonPressed :- Show the clouds background and hide the Dark Blue Button
    @IBAction func powerButtonPressed(_ sender: Any) {
        cloudsHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerButton.isHidden = true
        
        //play the sound with animation
        player.play()
        
        //Animate the rocket
        UIView.animate(withDuration: 2.3, animations: {
            self.rocket.frame = CGRect(x: 0, y: 200, width: 350, height: 236)
        }) { (finished) in
        self.hustleLabel.isHidden = false
        self.ONLabel.isHidden = false
        }
    }
    
    /*-----------------[ @Custom Methods ]---------------------*/
    
 private  func playAudio() {
        let path = Bundle.main.path(forResource: "hustle-on", ofType: "wav")!
    let url =  URL(fileURLWithPath: path)
    do {
        player  = try AVAudioPlayer(contentsOf: url)
        player.prepareToPlay()
    } catch let error as NSError {
        print(error.description)
    }
}
    
    
    
    
    
    
    
    
    
    //.../ viewController end brackets
}

