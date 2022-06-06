//
//  AppDAO.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 06/06/22.
//

import CoreData

class AppDAO: AppModel {
    
    override init(onboardFlag: Bool) {
        super.init(onboardFlag: onboardFlag)
    }
    
    public func saveOnboardFlag(appDelegate: AppDelegate) {
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let entity = NSEntityDescription.entity(forEntityName: "App", in: managedContext)!
        let app = NSManagedObject(entity: entity, insertInto: managedContext)
        
        app.setValue(self.getOnboardFlag(), forKey: "onboardFlag")
        
        do {
            
            try managedContext.save()
            
            print("OnboardFlag salva com sucesso!")
            
        } catch let error as NSError {
            
            print("Could not save. \(error), \(error.userInfo)")
            
        }
        
    }
    
    public static func readOnboardFlag(appDelegate: AppDelegate) -> Int {
        
        var flags: [NSManagedObject] = []
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "App")

        do {
            
            flags = try managedContext.fetch(fetchRequest)
            
        } catch let error as NSError {
            print("Could not fetch.\(error), \(error.userInfo)")
        }
        
        print("Dias lidos com sucesso!")
        
        return flags.count
        
    }
    
}
