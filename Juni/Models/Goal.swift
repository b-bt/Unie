//
//  Goal.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

enum GoalStatus {
    case waiting
    case pendingApproval
    case ongoing
}

class Goal: NSObject {
    let id = UUID()
    let name: String
    var status: GoalStatus
    var date: Date
    var value: Int
    var image: UIImage
    
    init(withName name: String, image: UIImage, date: Date, status: GoalStatus = .pendingApproval, andValue value: Int) {
        self.name = name
        self.status = status
        self.date = date
        self.value = value
        self.image = image
    }
}
