//
//  Goal.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class Goal: NSObject {
    let id = UUID()
    let name: String
    
    init(withName name: String) {
        self.name = name
    }
}
