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

    func create(question: String, asker: String, answer: String = "", answerer: String = "") {
        let input = Question.init(question: question, asker: asker, answer: answer, answerer: answerer)
        questions.append(input)
    }
    
    func update(question: Question, withAnswer answer: String, andAnswerer answerer: String) {
        guard let index = questions.index(of: question) else { return }  //get an index of struct witin an array
        
        questions[index].answer = answer
        questions[index].answerer = answerer
    }
    
    
    func delete(indexPath: IndexPath) {
        let indexPaths = indexPath.row
        self.questions.remove(at: indexPaths)
    }
}
