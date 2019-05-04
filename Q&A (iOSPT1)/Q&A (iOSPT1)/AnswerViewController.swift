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

    
    @IBOutlet weak var questionTitleLabel: UINavigationItem!
    
    @IBOutlet weak var questionLabel: UILabel!
 
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var answererLabel: UITextField!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }

    
    
    @IBAction func SubmitButtonTapped(_ sender: Any) {
        
        
        navigationController?.popViewController(animated: true)
        
    }
    
    
    func updateViews() {
        guard let questionEntered = question?.question,
            let asker = question?.asker else {return}
        questionTitleLabel.title = questionEntered
        questionLabel.text = questionEntered
        nameLabel.text = asker
    }
 

}
