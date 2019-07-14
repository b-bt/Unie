//
//  FinantialManager.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import Foundation

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
        Goal(withName: "Intercâmbio de Valentina"),
        Goal(withName: "Casa própria")
    ]
}
