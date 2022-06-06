//
//  CustomOnboardLabel.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 05/06/22.
//

import UIKit

class CustomOnboardLabel: UILabel {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setShadows()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setShadows()
    }
    
    private func setShadows() {
        
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 4
        layer.shadowOffset = CGSize(width: 0, height: 4)
        
        layer.masksToBounds = false
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        
    }

}
