
import Foundation
import UIKit

class ExerciseDetail: UIViewController {

    
    @IBOutlet weak var exercisename: UILabel!
    
    @IBOutlet weak var whatIs: UITextView!
    
    @IBOutlet weak var benefits: UILabel!
    
    var clickedCard:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    func detailviewconstructor(mod:Int){
        switch mod{
        case 1:
            exercisename.text = "yoga"
            whatIs.text = "essa e a descricao do q e yoga pega bro"
            benefits.text = "esses sao os beneficios do q e yoga pega bro"
        case 2:
            exercisename.text = "andar"
            whatIs.text = "essa e a descricao do q e andar"
            benefits.text = "esses sao os beneficios do q e andar"
        default:
            exercisename.text = "correr"
            whatIs.text = "essa e a descricao do q e correr"
            benefits.text = "esses sao os beneficos do q e correr"
        }
    }
  
    

}

