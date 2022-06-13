
import Foundation
import UIKit

class ExerciseDetail: UIViewController {

    @IBOutlet weak var scrollwhatIs: UIScrollView!
    @IBOutlet weak var scrollBenefits: UIScrollView!
    
    @IBOutlet weak var IdidButton: UIButton!
    
    @IBOutlet weak var detailImage: UIImageView!
    @IBOutlet weak var exercisename: UILabel!
    @IBOutlet weak var whatIs: UITextView!
    @IBOutlet weak var time: UILabel!
    @IBOutlet weak var benefits: UITextView!

    
    var clickedCard:CardDetail = CardDetail()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exercisename.text = clickedCard.exercisename
        whatIs.text = clickedCard.whatIs
        benefits.text = clickedCard.benefits
        time.text = clickedCard.time
        detailImage.image = clickedCard.detailImage
        scrollwhatIs.layer.opacity = 0.9
        scrollBenefits.layer.opacity = 0.9
    }

  
    @IBAction func IdidButton(_ sender: Any) {
        IdidButton.backgroundColor = UIColor.systemGreen
        dismiss(animated: true, completion: nil)
    }
    
  
    

}

