//
//  GoalTableViewCell.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class GoalTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLbl: UILabel!
    private(set) var goal: Goal! {
        didSet {
            self.nameLbl.text = self.goal.name
        }
    }
    @IBOutlet weak var shadowContainer: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.shadowContainer.addDropShadow()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func config(with goal: Goal) {
        self.goal = goal
    }
}
