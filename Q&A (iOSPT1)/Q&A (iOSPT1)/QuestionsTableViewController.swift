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
    
    var questionController = QuestionController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tableView.reloadData()
    }

    // MARK: - Table view data source

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionController.questions.count
    }

    //no delegate set up here is because there wont be any button witin cell as delegator in this case
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
