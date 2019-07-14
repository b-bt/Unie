//
//  MembersCollectionView.swift
//  Juni
//
//  Created by Bruno Barbosa on 14/07/19.
//  Copyright © 2019 Bruno Barbosa. All rights reserved.
//

import UIKit

class MembersCollectionView: UICollectionView {

    let memberCellIdentifier: String = "memberCell"
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.commonInit()
    }
    
    private func commonInit() {
        self.delegate = self
        self.dataSource = self
    }

}

extension MembersCollectionView: UICollectionViewDelegate {
    
}

extension MembersCollectionView: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return FinancialManager.shared.familyMembers.count + 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var member: FamilyMember? = nil
        if indexPath.row != 0 {
            member = FinancialManager.shared.familyMembers[indexPath.row - 1]
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.memberCellIdentifier, for: indexPath) as! MemberCollectionViewCell
        cell.config(withMember: member)
        return cell
    }
    
    
}
