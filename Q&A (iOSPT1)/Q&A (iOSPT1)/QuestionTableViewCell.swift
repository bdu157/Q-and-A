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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
