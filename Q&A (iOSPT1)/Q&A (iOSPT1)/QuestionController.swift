//
//  QuestionController.swift
//  Q&A (iOSPT1)
//
//  Created by Dongwoo Pae on 5/2/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation

class QuestionController {
    var questions : [Question] = []
    
    
    func create(object: Question) {
        questions.append(object)
    }
    func update(question: String, asker: String, answer: String, answerer: String) {
        let input = Question.init(question: question, asker: asker, answer: answerer, answerer: answerer)
        questions.append(input)
    }
   /*
    func delete(object: Question) {
        let index = questions.index(of: object)
        self.questions.remove(at: index)
    }
*/
}
