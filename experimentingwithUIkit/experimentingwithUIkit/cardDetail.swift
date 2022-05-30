
import Foundation
import UIKit
class CardDetail
{
    var exercisename : String
    var whatIs : String
    var benefits : String
    var cardname : String
    var backgroundColor : UIColor
    
    init (exercisename:String,whatIs:String,benefits:String,cardname:String,background:UIColor){
        self.exercisename = exercisename
        self.whatIs = whatIs
        self.benefits = benefits
        self.cardname = cardname
        self.backgroundColor = background
    }
    init(){
        self.exercisename = ""
        self.whatIs = ""
        self.benefits = ""
        self.cardname = ""
        self.backgroundColor = UIColor.systemGray5
    }
    
}
