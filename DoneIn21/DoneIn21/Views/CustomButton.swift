//
//  CustomButton.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 05/06/22.
//

import UIKit

class CustomButton: UIButton {

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
        layer.shadowRadius = 0
        layer.shadowOffset = CGSize(width: 2, height: 4)
        
        layer.masksToBounds = false
        layer.shouldRasterize = true
        layer.rasterizationScale = UIScreen.main.scale
        
    }
    
    override var isEnabled: Bool {
        
        didSet {
            
            if !isEnabled {
//                self.backgroundColor = UIColor(named: "DoneIn21Gray")
            }
            
        }

    }
    
}
