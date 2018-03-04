//
//  Questions.swift
//  QuizzyBiologia
//
//  Created by Alieksiei martins on 02/03/2018.
//  Copyright © 2018 Alieksiei martins. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String
    let answer : Bool
    let questionComment : String
    
    init(text: String, correctAnswer: Bool, comment: String) {
        questionText = text
        answer = correctAnswer
        questionComment = comment
    }
    
}
