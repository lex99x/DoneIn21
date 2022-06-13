
import Foundation
import UIKit

class QuestionDetail {
    var question : String
    var titleQuestion : String
    var answer : String
    var backgroundColor : UIColor
    var backgroundImage : UIImage
    
    init(question:String,titleQuestion:String,answer:String,backgroundColor:UIColor,backgroundImage :UIImage){
        self.question = question
        self.titleQuestion = titleQuestion
        self.answer = answer
        self.backgroundColor = backgroundColor
        self.backgroundImage = backgroundImage
    
    }
    init(){
        self.question = ""
        self.titleQuestion = ""
        self.answer = ""
        self.backgroundColor = .white
        self.backgroundImage = UIImage(systemName: "figure.walk")!
    }
}

