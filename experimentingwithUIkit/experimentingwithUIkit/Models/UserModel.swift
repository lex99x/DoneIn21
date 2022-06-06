//
//  User.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 05/06/22.
//

class UserModel {
    
    private var name: String
    private var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    
    public func setName(name: String) {
        self.name = name
    }
    
    public func getName() -> String {
        return self.name
    }
    
    public func setAge(age: Int) {
        self.age = age
    }
    
    public func getAge() -> Int {
        return self.age
    }
    
}
