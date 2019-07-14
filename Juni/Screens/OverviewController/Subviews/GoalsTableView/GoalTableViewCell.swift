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
    @IBOutlet weak var goalImgView: UIImageView!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var progressBar: UIView!
    private(set) var goal: Goal! {
        didSet {
            self.nameLbl.text = self.goal.name
            self.goalImgView.image = self.goal.image
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
        var text: String
        var color: UIColor
        
        switch goal.status {
        case .pendingApproval:
            text = "Aguardando análise do corretor"
            color = UIColor.red
            self.progressBar.isHidden = true
        case .waiting:
            text = "Aguardando sua aprovação"
            color = UIColor.red
            self.progressBar.isHidden = true
        default:
            text = "R$142/mês"
            color = UIColor.black
        }
        
        self.descLbl.text = text
        self.descLbl.textColor = color
    }
}
