//
//  ViewController.swift
//  Quiz App
//
//  Created by Chuyen Trung Tran on 10/8/19.
//  Copyright © 2019 Chuyen Trung Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //The UI Elements from the storyboard are already linked up for you.
    @IBOutlet weak var questionLabel: UILabel!
    
    //Place your instance variables here
    let questionBank = QuestionBank()
    var questionNumber: Int = 0
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
    }

    @IBAction func answerPressed(_ sender: Any) {
        if questionNumber >= questionBank.list.count {
            return
        }
        let button = sender as! UIButton
        var answer = false
        if button.tag == 1 {
            print("True button is pressed!")
            answer = true
        } else if button.tag == 2 {
            print("False button is pressed!")
        }
        checkAnswer(questionNumber: questionNumber, answer: answer)
        questionNumber += 1
        nextQuestion()
    }
    
    func nextQuestion() {
        if questionNumber < questionBank.list.count {
            questionLabel.text = questionBank.list[questionNumber].questionText
        } else {
            // You've finished all the questions
            print("Your score is: \(score)/\(questionBank.list.count)")
            // Students need to use the UIAlertController to displays a results message to the user, and ask the user want to start over?
            // Students can also add progress bar, progress label and score label
        }
    }
    
    //This method will check if the user has got the right answer.
    func checkAnswer(questionNumber: Int, answer: Bool) {
        if questionBank.list[questionNumber].correctAnswer == answer {
            score += 1
        }
    }
}

