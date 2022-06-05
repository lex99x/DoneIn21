//
//  CustomCollectionViewCell.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 05/06/22.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRoundedBorders()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setRoundedBorders()
    }
    
    private func setRoundedBorders() {
        layer.cornerRadius = 20
        self.clipsToBounds = true
    }
    
    private func setShadow() {
       
    }
    
}
