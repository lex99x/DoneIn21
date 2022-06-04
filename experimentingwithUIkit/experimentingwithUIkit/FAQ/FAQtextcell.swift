import Foundation
import UIKit

class Textcell:UITableViewCell{
    
    
    @IBOutlet weak var question: UILabel!
    func writetext (text:QuestionDetail){
            
        question.text = text.question

        
    }
     
}
