//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Md Abrar Nasim on 28/02/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain{
    var score = 0
    var questionNo = 0
    var questionsArray = [Question(text: "4+2 is 6", answer: "True"),
                          Question(text: "China is the most populous country", answer: "False"),
                          Question(text: "4+12 is 16", answer: "True"),
                          Question(text: "4+20 is 24", answer: "True"),
                          Question(text: "4+56 is 60", answer: "True"),
                          Question(text: "4+22 is 26", answer: "True")
                         ]
    
    
    mutating func checkAnswer(_ userAnswer : String)-> Bool {
        let correctAnswer = questionsArray[questionNo].answer
        if(userAnswer == correctAnswer){
            score+=1
            return true
        }else{
            return false
        }
    }
    
    func getQuestionText() -> String {
        let text = questionsArray[questionNo].text
        return text
    }
    
    func getProgress() -> Float {
        let progress = Float(questionNo+1)/Float(questionsArray.count)
        return progress
    }
    
    mutating func nextQuestion() {
        if(questionNo+1 < questionsArray.count){
            questionNo+=1
        } else{
            questionNo = 0
            score = 0
        }
    }
    
    func getScore() -> Int {
        return score
    }
}
