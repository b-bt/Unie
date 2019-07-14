//
//  OverviewController.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class OverviewController: UIViewController {
    
    
    @IBOutlet weak var goalsTable: GoalsTableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.goalsTable.goalsDelegate = self
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? GoalInfoViewController,
            let goal = sender as? Goal {
            vc.goal = goal
        }
    }

}

extension OverviewController: GoalTableViewDelegate {
    func touched(goal: Goal) {
        self.performSegue(withIdentifier: "goalInfoSegue", sender: goal)
    }
}
