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
        FamilyMember(withName: "Predo", andImageNamed: "user")
    ]
}
