//
//  Questions.swift
//  QuizBank
//
//  Created by Harry Ng on 01/03/2017.
//  Copyright © 2017 Harry Ng. All rights reserved.
//

import Foundation

class QuizBank {
    
    var questions : [String] = [
        "What’s the name of this city in the United States with a bell in the near middle of the city?",
        "What is the name of the spaceship first landed on the moon?",
        "What does 'umbros' mean in Latin? Translate it into Sentinelese.",
        "What’s the first photo printed from a camera in the world?",
        "When was the first email ever sent in the world?",
        "… and what was that email about?"
    ]
    
    var questionImageNames : [String] = ["1", "2", "3", "4", "5", "6"]
    
    var currentQuestionIndex : Int = 0
    
    var points : Int = 0
    
    func getNextQuestion() -> String {
        if currentQuestionIndex == (questions.count - 1) {
            currentQuestionIndex = 0
        } else {
            currentQuestionIndex += 1
        }
        return questions[currentQuestionIndex]
    }
    
    func getQuestionImageNames() -> String {
        return questionImageNames[currentQuestionIndex]
    }
}

