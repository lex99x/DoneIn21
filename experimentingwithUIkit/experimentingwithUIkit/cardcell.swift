

import Foundation
import UIKit

class cardcell:UICollectionViewCell{
    

    @IBOutlet weak var cardview: UIView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var imagemCard: UIImageView!
    func draw (card:CardDetail){
    
         name.text = card.exercisename
        imagemCard.image = card.cardImage
//         if card.cardname == "andar"{
//             imagemCard.image = UIImage(systemName: "figure.walk")
//
//         }
        
    }
     
}

