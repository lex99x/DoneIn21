

import Foundation
import UIKit

class cardcell:UICollectionViewCell{
    

    @IBOutlet weak var cardview: UIView!
    
    @IBOutlet weak var name: UILabel!
    
     func draw (card:CardDetail){
    
         name.text = card.exercisename
        
        
    }
     
}

