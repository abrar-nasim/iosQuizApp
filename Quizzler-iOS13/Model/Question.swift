//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Md Abrar Nasim on 28/02/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct Question{
    let text: String
    let answer: String
    
    init(text: String, answer: String) {
        self.text = text
        self.answer = answer
    }
}
