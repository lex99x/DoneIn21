//
//  DayDAO.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 06/06/22.
//

import CoreData

class DayDAO: DayModel {
    
    override init(dayNumber: Int, checkFlag: Bool) {
        super.init(dayNumber: dayNumber, checkFlag: checkFlag)
    }
    
    public func saveDay(appDelegate: AppDelegate) {
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "Day", in: managedContext)!
        let day = NSManagedObject(entity: entity, insertInto: managedContext)
        
        day.setValue(self.getDayNumber(), forKey: "dayNumber")
        day.setValue(self.getCheckFlag(), forKeyPath: "checkFlag")
        
        do {
            
            try managedContext.save()
            
            print("Dia salvo com sucesso!")
            
        } catch let error as NSError {
            
            print("Could not save. \(error), \(error.userInfo)")
            
        }
        
    }
    
    public func readDays(appDelegate: AppDelegate) -> [NSManagedObject] {
        
        var days: [NSManagedObject] = []
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Day")

        do {
            
            days = try managedContext.fetch(fetchRequest)
            
        } catch let error as NSError {
            print("Could not fetch.\(error), \(error.userInfo)")
        }
        
        print("Dias lidos com sucesso!")
        
//        for day in days {
//            
//            print(day.value(forKey: "dayNumber"), day.value(forKey: "checkFlag"))
//            
//        }
        
        return days
        
    }
    
}
