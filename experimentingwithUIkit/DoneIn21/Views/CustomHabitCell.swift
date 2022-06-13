//
//  CustomCollectionViewCell.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 05/06/22.
//

import UIKit

class CustomHabitCell: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRoundedCorners()
        setShadow()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setRoundedCorners()
        setShadow()
    }
    
    private func setRoundedCorners() {
        layer.cornerRadius = 18
        clipsToBounds = true
    }
    
    private func setShadow() {
        
        layer.shadowRadius = 5
        layer.shadowOpacity = 1
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOffset = CGSize(width: 1, height: 6)
        
        layer.masksToBounds = false
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
       
    }
    
}
