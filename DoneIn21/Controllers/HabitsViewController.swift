//
//  CollectionViewController.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 05/06/22.
//

import UIKit

class HabitsViewController: UIViewController {
    
    @IBOutlet weak var startButton: CustomButton!
    
    @IBOutlet weak var workoutCell: CustomHabitCell!
    
//    override func viewWillAppear(_ animated: Bool) {
//        startButton.isEnabled = false
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnWorkoutClicked(_ sender: Any) {
        
        if(workoutCell.backgroundColor == UIColor(named: "DoneIn21Orange")) {
            workoutCell.backgroundColor = UIColor(named: "DoneIn21Green")
//            startButton.isEnabled = true
        } else {
            workoutCell.backgroundColor = UIColor(named: "DoneIn21Orange")
//            startButton.isEnabled = false
        }
        
    }

    @IBAction func btnStartClicked(_ sender: Any) {
    
        UserDefaults.standard.set(true, forKey: "isHabitChoosen")
        
        var checkDays: [Bool] = []
        
        for _ in 1 ... 21 {
            
            let day = false
//            let day = DayModel(dayNumber: i, checkFlag: false, checkHour: -1, checkMinute: -1)
            checkDays.append(day)
            
        }
        
        let defaults = UserDefaults.standard
        
        defaults.set(checkDays, forKey: "checkDays")
    
    }
    
}
