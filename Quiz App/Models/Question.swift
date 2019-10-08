//
//  Question.swift
//  Quiz App
//
//  Created by Chuyen Trung Tran on 10/8/19.
//  Copyright © 2019 Chuyen Trung Tran. All rights reserved.
//

import Foundation

class Question {
    let questionTex: String
    let answer: Bool
    
    init(text: String, correctAnswer: Bool) {
        questionTex = text
        answer = correctAnswer
    }
}
