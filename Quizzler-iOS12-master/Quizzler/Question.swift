//
//  Question.swift
//  Quizzler
//
//  Created by Roney Thomas Mannoocheril on 2019-06-16.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        self.questionText = text
        self.answer = correctAnswer
    }
}

