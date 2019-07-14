//
//  FamilyMember.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class FamilyMember: NSObject {
    let id = UUID()
    var image: UIImage
    var name: String
    
    init(withName name: String, andImageNamed imageName: String) {
        self.name = name
        self.image = UIImage(named: imageName)!
    }
}
