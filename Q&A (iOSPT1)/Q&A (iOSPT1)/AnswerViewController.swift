//
//  AnswerViewController.swift
//  Q&A (iOSPT1)
//
//  Created by Dongwoo Pae on 5/2/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import Foundation
import UIKit

class AnswerViewController: UIViewController {

    
    var questionController: QuestionController?
    var question: Question? {
        didSet {
            loadViewIfNeeded()
            updateViews()
        }
    }

    
    @IBOutlet weak var questionTitleItem: UINavigationItem!
    
    @IBOutlet weak var questionLabel: UILabel!
 
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var answererTextField: UITextField!
    

    @IBOutlet weak var answerTextView: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    
    
    @IBAction func SubmitButtonTapped(_ sender: Any) {
        guard let answerer = answererTextField.text,
            let answer = answerTextView.text else {return}
        questionController?.update(question: "nil", asker: "nil", answer: answerer, answerer: answer)
        navigationController?.popViewController(animated: true)
        
    }
    
    
    func updateViews() {
        guard let questionEntered = question?.question,
            let asker = question?.asker,
            let answerer = question?.answerer
        else {return}
        questionTitleItem.title = questionEntered
        questionLabel.text = questionEntered
        questionLabel.text = questionEntered
        nameLabel.text = asker
    }
 

}
