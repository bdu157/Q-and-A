//
//  QuestionsTableViewController.swift
//  Q&A (iOSPT1)
//
//  Created by Dongwoo Pae on 5/2/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class QuestionsTableViewController: UIViewController, UITableViewDataSource {
   
    
    @IBOutlet weak var tableView: UITableView!
    
    //an instance of model controller => QuestionController so we have an access to properties and method of model controller
    var questionController = QuestionController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self    //conforming protocol
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()     //so this can reload everytime new data gets passed into [Question]
    }

    // MARK: - Table view data source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    //no delegate set up here is because there wont be any button within cell as delegator in this case
    //it just needs destination of QuestionTableViewCell to added [Question] to be shown in custome Cell without this cells wont be showing any [Question]
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        guard let questionTableCell = cell as? QuestionTableViewCell else {return cell}
        let questionTable = questionController.questions[indexPath.row]
        questionTableCell.question = questionTable
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        //working on it
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //there are two segues within QuestionTableViewController, ToAskQuestionVC segue got added from Submit Question bar button and ToAnswerVC segue got added directtly from customcell
        
        //for ToAskQuestionVC segue, it does not need selectedRow because it was not connected through cell it was through bar button
        
        //your passing whole instance of QuestionController alone through segue so AskQuestionViewController can use it to call its method within the model controller. for AnswerViewController it needs question (an element of [Qustion] => one struct that has 4 properties) as well to make them appear in labels
        if segue.identifier == "ToAskQuestionVC" {
            guard let askQuestionVC = segue.destination as? AskQuestionViewController else {return}
                askQuestionVC.questionController = questionController
        } else if segue.identifier == "ToAnswerVC" {
            guard let answerVC = segue.destination as? AnswerViewController,
                let selectedRow = tableView.indexPathForSelectedRow else {return}
                let question = questionController.questions[selectedRow.row]
                answerVC.questionController = questionController
                answerVC.question = question
        }
    }
}
