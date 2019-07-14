//
//  RoundedButton.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

@IBDesignable class RoundedButton: UIView {

    @IBInspectable var title: String? {
        didSet {
            if let title = title {
                self.contentView.setTitle(title, for: .normal)
            }
        }
    }
    
    @IBInspectable var alternateTintColor: UIColor? {
        didSet {
            if let tintColor = alternateTintColor {
                self.contentView.setTitleColor(tintColor, for: .normal)
            }
        }
    }
    @IBInspectable var alternateBackgroundColor: UIColor? {
        didSet {
            if let bgColor = alternateBackgroundColor {
                self.contentView.backgroundColor = bgColor
            }
        }
    }
    
    var delegate: RoundedButtonDelegate?
    
    fileprivate var contentView: UIButton!
    fileprivate var shadowView: UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit() {
        self.backgroundColor = UIColor.clear
        self.createShadow()
        
        self.clipsToBounds = false
        self.contentView = self.loadViewFromNib() as! UIButton
        self.shadowView.addSubview(self.contentView)
        
        let heightConstraint = NSLayoutConstraint(item: self.contentView!, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 1, constant: 0)
        let widthConstraint = NSLayoutConstraint(item: self.contentView!, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0)
        let centerXConstraint = NSLayoutConstraint(item: self.contentView!, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0)
        let centerYConstraint = NSLayoutConstraint(item: self.contentView!, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        self.addConstraints([heightConstraint, widthConstraint, centerXConstraint, centerYConstraint])
        self.contentView.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.layer.cornerRadius = 16.0
        self.contentView.layer.masksToBounds = true
        
        self.setNeedsLayout()
        
        self.contentView.addTarget(self, action: #selector(buttonTouched), for: .touchUpInside)
    }
    
    private func createShadow() {
        self.shadowView = UIView()
        self.shadowView.backgroundColor = UIColor.clear
        self.shadowView.addDropShadow()
        self.addSubview(self.shadowView)
        
        let heightConstraint = NSLayoutConstraint(item: self.shadowView!, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 1, constant: 0)
        let widthConstraint = NSLayoutConstraint(item: self.shadowView!, attribute: .width, relatedBy: .equal, toItem: self, attribute: .width, multiplier: 1, constant: 0)
        let centerXConstraint = NSLayoutConstraint(item: self.shadowView!, attribute: .centerX, relatedBy: .equal, toItem: self, attribute: .centerX, multiplier: 1, constant: 0)
        let centerYConstraint = NSLayoutConstraint(item: self.shadowView!, attribute: .centerY, relatedBy: .equal, toItem: self, attribute: .centerY, multiplier: 1, constant: 0)
        self.addConstraints([heightConstraint, widthConstraint, centerXConstraint, centerYConstraint])
        self.shadowView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @objc func buttonTouched() {
        self.delegate?.buttonTouched()
    }

}
