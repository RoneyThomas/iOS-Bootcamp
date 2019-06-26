//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Our strings
    let stories = ["Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\".", "He nods slowly, unphased by the question.", "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.", "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?", "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.", "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""]
    let answer = [["I\'ll hop in. Thanks for the help!", "Better ask him if he\'s a murderer first."], ["At least he\'s honest. I\'ll climb in.","Wait, I know how to change a tire."], ["I love Elton John! Hand him the cassette tape.", "It\'s him or me! You take the knife and stab him."]]
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    // TODO Step 5: Initialise instance variables here
    var storyIndex: Int = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        updateUI(index: 1)
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
                
        // TODO Step 6: Modify the IF-Statement to complete the story
        // 1 is the top button
        // 2 is the bottom button
        if sender.tag == 1 {
            if storyIndex == 1 || storyIndex == 2 {
                updateUI(index: 3)
            } else if storyIndex == 3 {
                updateUI(index: 6)
            }
        } else {
            if storyIndex == 1 {
                updateUI(index: 2)
            }
            else if storyIndex == 2 {
                updateUI(index: 4)
            } else if storyIndex == 3 {
                updateUI(index: 5)
            }
        }
    
    }
    
    func updateUI(index: Int) {
        storyTextView.text = stories[index-1]
        if index >= 1 && index <= 3 {
            topButton.setTitle(answer[index-1][0], for: UIControl.State.normal)
            bottomButton.setTitle(answer[index-1][1], for: UIControl.State.normal)
        } else {
            topButton.isHidden = true
            bottomButton.isHidden = true
        }
        storyIndex = index
    }

}

