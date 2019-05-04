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

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }

    @IBAction func SubmitQuestionButtonTapped(_ sender: Any) {
        guard let nameText = NameTextField.text,
            let questionText = QuestionTextView.text else {return}
                questionController?.create(object: Question(question: questionText, asker: nameText))
        NameTextField.text = " "
        QuestionTextView.text = " " 
        //navigationcontroller pop to the previous controller
        navigationController?.popViewController(animated: true)
    }
}

