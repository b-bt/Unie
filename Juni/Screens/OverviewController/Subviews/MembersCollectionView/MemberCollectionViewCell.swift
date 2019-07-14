//
//  MemberCollectionViewCell.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class MemberCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageView: UIImageView!
    
    private(set) var member: FamilyMember? {
        didSet {
            if let image = self.member?.image {
                self.imageView.image = image
            } else {
                self.imageView.image = UIImage(named: "home")
            }
        }
    }
    
    func config(withMember familyMember: FamilyMember?) {
        self.member = familyMember
    }
}
