//
//  CustomTextField.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 05/06/22.
//

import UIKit

class CustomTextField: UITextField {
    
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
        layer.cornerRadius = 14.5
//        clipsToBounds = true
    }
    
    private func setShadow() {
        
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        layer.shadowOpacity = 1
        layer.shadowRadius = 0
        layer.shadowOffset = CGSize(width: 2, height: 4)
        
        layer.masksToBounds = false
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        
    }

}
