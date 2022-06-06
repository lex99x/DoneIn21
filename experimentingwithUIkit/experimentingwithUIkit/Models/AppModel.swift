//
//  AppModel.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 06/06/22.
//

class AppModel {
    
    private var onboardFlag: Bool!
    
    init(onboardFlag: Bool) {
        self.onboardFlag = onboardFlag
    }
    
    public func setOnboardFlag(onboardFlag: Bool) {
        self.onboardFlag = onboardFlag
    }
    
    public func getOnboardFlag() -> Bool {
        return self.onboardFlag
    }
    
}
