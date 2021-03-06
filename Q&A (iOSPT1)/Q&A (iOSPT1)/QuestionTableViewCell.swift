//
//  QuestionTableViewCell.swift
//  Q&A (iOSPT1)
//
//  Created by Dongwoo Pae on 5/2/19.
//  Copyright © 2019 Dongwoo Pae. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var QuestionLabelLabel: UILabel!
    
    @IBOutlet weak var AskedByLabel: UILabel!
    
    @IBOutlet weak var AskedByLabelLabel: UILabel!
    
    @IBOutlet weak var bottomLabel: UILabel!
    
    
    var question: Question? {
        didSet {
            updateView()
        }
    }
    
    private func updateView() {
        guard let questionInput = question?.question,
            let askerInput = question?.asker else {return}

                QuestionLabelLabel.text = questionInput
                AskedByLabelLabel.text = askerInput
                bottomLabel.text = "Can you asnwer this?"
        
    }
    
    /*
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
 */
}
