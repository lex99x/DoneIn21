
import Foundation
import UIKit

class ExerciseDetail: UIViewController {

    
    @IBOutlet weak var exercisename: UILabel!
    
    @IBOutlet weak var whatIs: UITextView!
    
    @IBOutlet weak var benefits: UILabel!
    
    var clickedCard:CardDetail = CardDetail()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exercisename.text = clickedCard.exercisename
        whatIs.text = clickedCard.whatIs
        benefits.text = clickedCard.benefits
    }

  
    @IBAction func IdidButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
  
    

}

