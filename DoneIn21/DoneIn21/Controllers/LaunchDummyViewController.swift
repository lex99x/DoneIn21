//
//  LaunchDummyViewController.swift
//  DoneIn21
//
//  Created by Alex A. Rocha on 15/06/22.
//

import UIKit

class LaunchDummyViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        
        if UserDefaults.standard.bool(forKey: "isHabitChoosen") {
            performSegue(withIdentifier: "toMain", sender: nil)
        } else {
            performSegue(withIdentifier: "toOnboard", sender: nil)
        }
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
