//
//  ViewController.swift
//  Dicee
//
//  Created by Roney Thomas Mannoocheril on 2019-06-12.
//  Copyright © 2019 Roney Thomas Mannoocheril. All rights reserved.
//

import UIKit
import os.log

class ViewController: UIViewController {
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    let dices: [String] = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDice()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // Excuted when Roll button is pressed
        os_log("Roll is button is pressed")
        updateDice()
    }
    
    func updateDice() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        print("\(randomDiceIndex1)   \(randomDiceIndex2)")
        
        diceImageView1.image = UIImage(named: dices[randomDiceIndex1])
        diceImageView2.image = UIImage(named: dices[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            os_log("shaked")
            updateDice()
        }
    }
    
}

