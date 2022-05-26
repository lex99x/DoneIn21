//
//  cardcell.swift
//  experimentingwithUIkit
//
//  Created by Gabriel Dias Goncalves on 25/05/22.
//

import Foundation
import UIKit

class cardcell:UICollectionViewCell{
    

    @IBOutlet weak var cardview: UIView!
    
    @IBOutlet weak var name: UILabel!
    
    func draw (mod:Int){
        switch mod{
            case 1:
            name.text = "yoga"
            cardview.backgroundColor = UIColor.red
            case 2:
            name.text = "correr"
            cardview.backgroundColor = UIColor.blue
            default:
            name.text = "andar"
            cardview.backgroundColor = UIColor.green
        }
        
        
    }
}

