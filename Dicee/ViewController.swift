//
//  ViewController.swift
//  Dicee
//
//  Created by Amarjit Singh on 11/27/18.
//  Copyright © 2018 Amarjit Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    let imageNameArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        //What Happends when the button is pressed
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: imageNameArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: imageNameArray[randomDiceIndex2])
    }
    
}
