//
//  Model.swift
//  Q&A (iOSPT1)
//
//  Created by Dongwoo Pae on 5/2/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation

struct Question {
    let question : String
    let asker : String           //asker's name
    var answer : String?
    var answerer :  String?     //answerer's name
    
    init(question: String, asker: String, answer: String, answerer: String) {
        self.question = question
        self.asker = asker
        self.answer = answer
        self.answerer = answerer
    }
}


