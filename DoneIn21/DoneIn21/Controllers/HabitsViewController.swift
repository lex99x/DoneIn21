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

}
