//
//  UIView+Shadow.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

extension UIView {
    func addDropShadow(withRadius radius: CGFloat = 4.0, andOffset offset: CGSize = CGSize(width: 0, height: 2)) {
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = 0.15
        self.layer.shadowRadius = radius
    }
}
