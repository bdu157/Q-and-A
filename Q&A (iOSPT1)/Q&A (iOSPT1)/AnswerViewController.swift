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
    var question: Question? 

    
    @IBOutlet weak var questionLabel: UILabel!
 
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var inputNameLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
/*
    func updateViews() {
        questionLabel.text = question?.question
        nameLabel.text = question?.asker
    }
 
*/
}
