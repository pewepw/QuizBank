//
//  GameViewController.swift
//  QuizBank
//
//  Created by Harry Ng on 01/03/2017.
//  Copyright © 2017 Harry Ng. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var game : QuizBank = QuizBank()
    
    @IBOutlet weak var pointLabel: UILabel!
    @IBOutlet weak var questionImageView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pointLabel.text = ""
        let starterImage = UIImage(named: "2")
        questionImageView.image = starterImage
        questionLabel.text = "Tap the true button to start a new game!"
        falseButton.isEnabled = false
        
        
    }
    
    @IBAction func trueButtonTapped(_ sender: Any) {
        
        if pointLabel.text == "" {
            falseButton.isEnabled = true
            game.points = 0
        } else {
            game.points += 1
        }
        
        updateGame()
        
    }
    
    @IBAction func falseButtonTapped(_ sender: Any) {
        game.points -= 1
        updateGame()
    }
    
    func updateGame() {
        let nextQuestion = game.getNextQuestion()
        let questionImage = game.getQuestionImageNames()
        let image = UIImage(named: questionImage)
        
        questionImageView.image = image
        questionLabel.text = nextQuestion
        pointLabel.text = "\(game.points)"
        
    }
    
    
}
