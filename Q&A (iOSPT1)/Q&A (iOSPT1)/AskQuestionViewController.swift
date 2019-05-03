//
//  AskQuestionViewController.swift
//  Q&A (iOSPT1)
//
//  Created by Dongwoo Pae on 5/2/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class AskQuestionViewController: UIViewController {
    @IBOutlet weak var NameTextField: UITextField!
    @IBOutlet weak var QuestionTextView: UITextView!
    
    var questionController: QuestionController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

    @IBAction func SubmitQuestionButtonTapped(_ sender: Any) {
        guard let nameText = NameTextField.text,
            let questionText = QuestionTextView.text else {return}
                questionController?.create(object: Question(question: questionText, asker: nameText))
        //have the navigation controller pop to the previous view controller?
        NameTextField.text = " "
        QuestionTextView.text = " "
    }
}

