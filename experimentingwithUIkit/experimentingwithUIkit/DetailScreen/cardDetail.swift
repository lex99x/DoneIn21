
import Foundation
import UIKit
class CardDetail
{
    var exercisename : String
    var whatIs : String
    var benefits : String
    var cardname : String
    var backgroundColor : UIColor
    var cardImage : UIImage
    var detailImage : UIImage
    var time : String
    
    init (exercisename:String,whatIs:String,benefits:String,cardname:String,background:UIColor,cardImage:UIImage,detailImage:UIImage,time:String){
        self.exercisename = exercisename
        self.whatIs = whatIs
        self.benefits = benefits
        self.cardname = cardname
        self.backgroundColor = background
        self.cardImage = cardImage
        self.detailImage = detailImage
        self.time = time
    }
    init(){
        self.exercisename = ""
        self.whatIs = ""
        self.benefits = ""
        self.cardname = ""
        self.backgroundColor = UIColor.systemGray5
        self.cardImage = UIImage(systemName: "figure.walk")!
        self.detailImage = UIImage(systemName: "figure.walk")!
        self.time = "10-15"
    }

}
