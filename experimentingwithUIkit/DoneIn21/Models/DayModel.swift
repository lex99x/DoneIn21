//
//  DayModel.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 06/06/22.
//

class DayModel {
    
    private var dayNumber: Int
    private var checkFlag: Bool
    
    init(dayNumber: Int, checkFlag: Bool) {
        self.dayNumber = dayNumber
        self.checkFlag = checkFlag
    }
    
    public func setDayNumber(dayNumber: Int) {
        self.dayNumber = dayNumber
    }
    
    public func getDayNumber() -> Int {
        return self.dayNumber
    }
    
    public func setCheckFlag(checkFlag: Bool) {
        self.checkFlag = checkFlag
    }
    
    public func getCheckFlag() -> Bool {
        return self.checkFlag
    }
    
}
