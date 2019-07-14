//
//  GoalsTableView.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class GoalsTableView: UITableView {

    let goalCellIdentifier: String = "goalCell"
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit() {
        self.delegate = self
        self.dataSource = self
    }

}

extension GoalsTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FinancialManager.shared.goals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let goal = FinancialManager.shared.goals[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: self.goalCellIdentifier, for: indexPath) as! GoalTableViewCell
        cell.config(with: goal)
        return cell
    }
    
    
}

extension GoalsTableView: UITableViewDelegate {
    
}
