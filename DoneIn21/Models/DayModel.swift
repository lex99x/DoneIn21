//
//  DayModel.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 06/06/22.
//

class DayModel {
    
    private var dayNumber: Int
    private var checkFlag: Bool
    
    private var checkHour: Int
    private var checkMinute: Int
    
    init(dayNumber: Int, checkFlag: Bool, checkHour: Int, checkMinute: Int) {
        self.dayNumber = dayNumber
        self.checkFlag = checkFlag
        self.checkHour = checkHour
        self.checkMinute = checkMinute
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
    
    public func setCheckHour(checkHour: Int) {
        self.checkHour = checkHour
    }
    
    public func getCheckHour() -> Int {
        return self.checkHour
    }
    
    public func setCheckMinute(checkMinute: Int) {
        self.checkMinute = checkMinute
    }
    
    public func getCheckMinute() -> Int {
        return self.checkMinute
    }
    
}
