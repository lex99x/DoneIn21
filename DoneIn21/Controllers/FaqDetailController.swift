
import Foundation
import UIKit

class FaqDetail: UIViewController {
   
    @IBOutlet weak var backview: UIView!
    @IBOutlet weak var imagebackground: UIImageView!
    @IBOutlet weak var answer: UITextView!
    @IBOutlet weak var questionTitle: UILabel!
    
    var clickedCell:QuestionDetail = QuestionDetail()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backview.layer.opacity = 0.8
        imagebackground.image = clickedCell.backgroundImage
        questionTitle.text = clickedCell.titleQuestion
        answer.text = clickedCell.answer
        
    }

  
    

}

