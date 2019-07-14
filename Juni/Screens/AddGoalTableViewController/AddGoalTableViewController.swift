//
//  AddGoalTableViewController.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class AddGoalTableViewController: UITableViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.prefersLargeTitles = false
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectPicture))
        self.imageView.addGestureRecognizer(tapRecognizer)
    }

    @IBAction func addGoal(_ sender: Any) {
        // TODO
    }
    
    @objc func selectPicture() {
        print("oi")
    }
    

}
