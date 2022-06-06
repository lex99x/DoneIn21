//
//  CollectionViewController.swift
//  experimentingwithUIkit
//
//  Created by Alex A. Rocha on 05/06/22.
//

import UIKit

class OnboardViewController: UIViewController {
    
//    private var escolhaCell: CustomHabitCell? = nil
    
    @IBOutlet weak var nameTextField: CustomTextField!
    @IBOutlet weak var ageTextField: CustomTextField!
    
    @IBOutlet weak var continueButtonDiscover: CustomButton!
    @IBOutlet weak var continueButtonLearn: CustomButton!
    @IBOutlet weak var saveButton: CustomButton!
    @IBOutlet weak var startButton: CustomButton!
    
    @IBOutlet weak var workoutCell: CustomHabitCell!
    @IBAction func btnWorkoutClicked(_ sender: Any) {
        
        if (workoutCell.backgroundColor == UIColor(named: "DoneIn21Blue")) {
            workoutCell.backgroundColor = UIColor(named: "DoneIn21Green")
        } else {
            workoutCell.backgroundColor = UIColor(named: "DoneIn21Blue")
        }
        
    }
    
    
    @IBOutlet weak var mealsCell: CustomHabitCell!
    @IBAction func btnMealsClicked(_ sender: Any) {
        
        if (mealsCell.backgroundColor == UIColor(named: "DoneIn21Orange")) {
            mealsCell.backgroundColor = UIColor(named: "DoneIn21Green")
        } else {
            mealsCell.backgroundColor = UIColor(named: "DoneIn21Orange")
        }
        
    }
    
    @IBOutlet weak var waterCells: CustomHabitCell!
    @IBAction func btnWaterClicked(_ sender: Any) {
        
        if (waterCells.backgroundColor == UIColor(named: "DoneIn21Orange")) {
            waterCells.backgroundColor = UIColor(named: "DoneIn21Green")
        } else {
            waterCells.backgroundColor = UIColor(named: "DoneIn21Orange")
        }
        
    }
    
    @IBOutlet weak var focusCell: CustomHabitCell!
    @IBAction func btnFocusClicked(_ sender: Any) {
        
        if (focusCell.backgroundColor == UIColor(named: "DoneIn21Blue")) {
            focusCell.backgroundColor = UIColor(named: "DoneIn21Green")
        } else {
            focusCell.backgroundColor = UIColor(named: "DoneIn21Blue")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = nil
        navigationItem.hidesBackButton = true
        
    }

}
