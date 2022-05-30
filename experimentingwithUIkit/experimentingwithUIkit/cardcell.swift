

import Foundation
import UIKit

class cardcell:UICollectionViewCell{
    

    @IBOutlet weak var cardview: UIView!
    
    @IBOutlet weak var name: UILabel!
    
     func draw (mod:Int){
        switch mod{
            case 1:
            name.text = "yoga"
            cardview.backgroundColor = UIColor.systemGray3
           
            case 2:
            name.text = "andar"
            cardview.backgroundColor = UIColor.systemGray3
           
            case 3:
            name.text = "andar"
            cardview.backgroundColor = UIColor.systemGray3
            default:
            name.text = "correr"
            cardview.backgroundColor = UIColor.systemGray3
            
        }
        
        
    }
     
}

