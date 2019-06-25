//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var questionNumber: Int = 0
    var score = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1 {
            checkAnswer(answer: true)
        } else {
            checkAnswer(answer: false)
        }
        nextQuestion()
    }
    
    
    func updateUI() {
        questionLabel.text = allQuestions.list[questionNumber].questionText
        scoreLabel.text = String(score)
        progressLabel.text = "\(questionNumber+1)/\(allQuestions.list.count)"
        progressBar.frame.size.width = (view.frame.size.width/13) * CGFloat(questionNumber+1)
    }
    
    
    func nextQuestion() {
        print(allQuestions.list.count)
        if questionNumber < allQuestions.list.count - 1 {
            questionNumber += 1
            updateUI()
            print(questionNumber)
        } else {
            let alert = UIAlertController(title: "Awesome", message: "You have finsihed Quiz", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default) { (UIAlertAction) in
                self.startOver()
            }
            alert.addAction(restartAction)
            present(alert, animated: true, completion: nil)
        }
    }
    
    
    func checkAnswer(answer: Bool) {
        if answer == allQuestions.list[questionNumber].answer {
            ProgressHUD.showSuccess("Correct")
            print("Correct answer")
            score+=1
        } else {
            print("wrong answer")
            ProgressHUD.showError("Wrong!")
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        updateUI()
    }
    
    
    
}
