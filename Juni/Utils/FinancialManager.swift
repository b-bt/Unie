//
//  FinantialManager.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class FinancialManager {
    private init() {}
    static private(set) var shared: FinancialManager = FinancialManager()
    
    private(set) var familyMembers: [FamilyMember] = [
        FamilyMember(withName: "Gustavo", andImageNamed: "member1"),
        FamilyMember(withName: "Júlia", andImageNamed: "member2"),
        FamilyMember(withName: "Valentina", andImageNamed: "member3"),
        FamilyMember(withName: "Roberto", andImageNamed: "member4")
    ]
    
    private(set) var goals: [Goal] = [
        Goal(withName: "Faculdade de Valentina", image: UIImage(named: "college")!, date: Date(timeIntervalSince1970: 1948060800), status: .ongoing, andValue: 7000000),
        Goal(withName: "Casa própria", image: UIImage(named: "house")!, date: Date(timeIntervalSince1970: 1421971200), status: .ongoing, andValue: 50000)
    ]
    
    func createGoal(withName name: String, image: UIImage, date: Date, andValue value: Int) {
        let goal = Goal(withName: name, image: image, date: date, andValue: value)
        self.goals.append(goal)
    }
}
