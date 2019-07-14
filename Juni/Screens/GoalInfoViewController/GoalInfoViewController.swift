//
//  GoalInfoViewController.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class GoalInfoViewController: UIViewController {

    var goal: Goal!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = self.goal.name
        self.navigationController?.navigationBar.prefersLargeTitles = false
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
