//
//  ViewController.swift
//  Hustle
//
//  Created by Winston on 8/22/19.
//  Copyright © 2019 Winston. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /*-----------------[ @Outlets ]---------------------*/
    
    @IBOutlet weak var darkBlueBG: UIImageView!
    @IBOutlet weak var powerButton: UIButton!
    @IBOutlet weak var cloudsHolder: UIView!
    @IBOutlet weak var rocket: UIImageView!
    @IBOutlet weak var hustleLabel: UILabel!
    @IBOutlet weak var ONLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

       /*-----------------[ @Actions ]---------------------*/
    // @powerButtonPressed :- SHow the clouds background and hide the Dark Blue Button
    @IBAction func powerButtonPressed(_ sender: Any) {
        cloudsHolder.isHidden = false
        darkBlueBG.isHidden = true
        powerButton.isHidden = true
    }
    
}

