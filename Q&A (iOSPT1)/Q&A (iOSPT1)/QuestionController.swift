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
    
    func update(indexPath: IndexPath, answerer: String, answer: String) {
        let indexPaths = indexPath.row
        questions[indexPaths].answerer?.append(answerer)
        questions[indexPaths].answer?.append(answer)
    }
    
    
    func delete(indexPath: IndexPath) {
        let indexPaths = indexPath.row
        self.questions.remove(at: indexPaths)
    }
}
