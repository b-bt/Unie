//
//  MonthlyBalanceView.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class MonthlyBalanceView: UIView {

    fileprivate var contentView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit() {
        self.contentView = self.loadViewFromNib()
        self.addSubview(self.contentView)
        
        self.addDropShadow()
        self.backgroundColor = UIColor.clear
    }
    
    @IBAction func goToDetailsTapped(_ sender: Any) {
        // TODO: call action on delegate
    }
    
}
