import UIKit


class Check: UIViewController {
  
    private var appDelegate: AppDelegate!

    @IBOutlet weak var itsDoneButton: UIButton!
    @IBOutlet weak var exercises: UICollectionView!
    @IBOutlet weak var umdevinte: UILabel!
    
    var daysCount:Int = 1
    var cards:[CardDetail] = []
    var selectedCard : CardDetail = CardDetail()
    var isGrenn = false
    let shape = CAShapeLayer()
    let trackshape = CAShapeLayer()
    
    override func viewDidLoad() {
        
        self.appDelegate = UIApplication.shared.delegate as? AppDelegate
        
        super.viewDidLoad()
       
        let circlePath = UIBezierPath(arcCenter:CGPoint(x: 195, y: 340), radius: 100, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)
        
        trackshape.path = circlePath.cgPath
        trackshape.fillColor = UIColor(named: "DoneIn21Orange")?.cgColor
        trackshape.lineWidth = 15
        trackshape.strokeColor = UIColor.systemGray3.cgColor
        trackshape.zPosition = 0
        view.layer.addSublayer(trackshape)
        umdevinte.layer.zPosition = 1
        
        shape.path = circlePath.cgPath
        shape.lineWidth = 15
        shape.strokeColor = UIColor(named:"DoneIn21Green")?.cgColor
        shape.fillColor = UIColor.clear.cgColor
        shape.strokeEnd = 0
        view.layer.addSublayer(shape)

        exercises.dataSource = self
        exercises.delegate = self
        
        cards = [
            CardDetail(exercisename: "Yoga", whatIs: "It is a safe and useful activity for everyone and can help improve general flexibility, neuromuscular coordination, balance and postural awareness.\n\nStretching performed with a volume of 30 to 60 seconds increases joint Range of Motion in most adults, being enough to improve flexibility", benefits: "Consistent joint movement can decrease the risk of injury in activities of daily living, and relieve pain from chronic conditions such as back pain or osteoarthritis.\n\nThey influence both the mind and the body. A prolonged stretching routine can be an excellent method of relaxation and an excellent stress reducer.", cardname: "Yoga",background: UIColor(named: "DoneIn21Blue")!,cardImage: UIImage(named: "yoga")!,detailImage: UIImage(named: "yogam")!,time: "Freestyle"),
            CardDetail(exercisename: "Walk", whatIs: "This is a low-impact aerobic exercise that is very effective for your health, as well as being easy, and suitable for beginners as it does not present as many risks to the muscles, bones and heart as running. It can be done anywhere by people of all ages, it has practically no contraindications.", benefits: "Among its numerous benefits, we can mention the improvement in the control of anxiety and stress levels and the toning and strengthening of muscles, all with a daily dedication of 30 to 45 minutes. Walking also helps with weight loss, circulation, cardiovascular health and the acceleration of metabolism in general.", cardname: "Walk",background: UIColor(named: "DoneIn21Orange")!,cardImage: UIImage(named: "andar")!,detailImage: UIImage(named: "andarm")!,time: "30-45 min"),
            CardDetail(exercisename: "Pushups", whatIs: "It is an exercise that works the muscles of the chest, triceps, shoulders, abdomen, lumbar and lower limbs, it does not depend on accessories, with enough space on the floor for its accomplishment, they can be practiced every day, and have several levels. of complexity when variables are changed and different types are incorporated.", benefits: "The push-up exercises consist of making the back and upper limbs stronger, which consequently guarantees a better posture to perform the other exercises. The thigh and hip muscles are also worked. Experts recommend sticking to your personal limit for training intensity, sets and repetitions, as it varies from person to person.", cardname: "Pushups", background: UIColor(named: "DoneIn21Blue")!, cardImage: UIImage(named: "flexao")!,detailImage: UIImage(named: "flexaom")!,time: "Freestyle"),
            CardDetail(exercisename: "Stretching", whatIs: "It is a safe and useful activity for everyone and can help improve general flexibility, neuromuscular coordination, balance and postural awareness.Stretching performed with a volume of 30 to 60 seconds increases joint Range of Motion in most adults, being enough to improve flexibility", benefits: "Consistent joint movement can decrease the risk of injury in activities of daily living, and relieve pain from chronic conditions such as back pain or osteoarthritis.They influence both the mind and the body. A prolonged stretching routine can be an excellent method of relaxation and an excellent stress reducer.", cardname: "Stretching", background: UIColor(named: "DoneIn21Orange")!, cardImage: UIImage(named: "alongamento")!,detailImage: UIImage(named: "alongamento")!,time: "30-60 seg"),
            CardDetail(exercisename: "Abs", whatIs: "These are exercises that work all the abdominal muscles, the most common among them being the one characterized by flexing the trunk, the abdominal muscles are essential for good movement of the whole body during daily activities.", benefits: "Improves balance, helping with better posture and enhancing possible training at the gym and other sports practices, because it is the central part of the body, a strengthened core gives more strength to sustain exercises in other areas. It is generally recommended by experts to do abdominal exercises, between 2 and 3 sessions a week, always keeping at least 48 hours between them.", cardname: "Abs", background: UIColor(named: "DoneIn21Blue")!, cardImage: UIImage(named: "abdominal")!,detailImage: UIImage(named: "absm")!,time: "Freestyle")
        ]
      
       
    }

    @IBAction func trocaCor(_ sender: Any) {
        
        if isGrenn {
            
        } else {
            
            let dayDAO = DayDAO(dayNumber: daysCount, checkFlag: !isGrenn)
            
            dayDAO.saveDay(appDelegate: appDelegate)
            dayDAO.readDays(appDelegate: appDelegate)
            
            itsDoneButton.tintColor = UIColor(named: "DoneIn21Green")
            itsDoneButton.backgroundColor = UIColor(named: "DoneIn21Green")
            shape.strokeColor = UIColor(named:"DoneIn21Green")?.cgColor
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.toValue = 1
            animation.duration = 1.3
            animation.isRemovedOnCompletion = false
            animation.fillMode = .forwards
            shape.add(animation, forKey: "animation")
            isGrenn = true
            itsDoneButton.isEnabled = false
            daysCount += 1
            umdevinte.text = "\(daysCount) de 21"
            if daysCount == 21 {daysCount = 0}
            let timer = Timer.scheduledTimer(withTimeInterval: 4.0, repeats: false) { timer in
                print("timerAtivado")
                self.itsDoneButton.tintColor = UIColor(named: "DoneIn21Blue")
                self.itsDoneButton.backgroundColor = UIColor(named: "DoneIn21Blue")
                self.itsDoneButton.isEnabled = true
                self.shape.strokeColor = UIColor.systemGray3.cgColor
                self.isGrenn = false
                
              
            }
          
        }
        
    }
    @IBAction func FaqButton(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let FAQ = storyBoard.instantiateViewController(withIdentifier: "Faq") as! Faq
//        self.present(FAQ, animated: true, completion: nil)
        self.navigationController?.pushViewController(FAQ, animated: true)
    }

}

extension Check:UICollectionViewDataSource{
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return cards.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell: cardcell = exercises.dequeueReusableCell(withReuseIdentifier: "exerciseexample", for: indexPath) as! cardcell
  

    cell.draw(card: cards[indexPath.item])
    return cell
}

}
extension Check: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCard = cards[indexPath.item]
        performSegue(withIdentifier: "showdetail", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc : ExerciseDetail = segue.destination as! ExerciseDetail
        vc.clickedCard = selectedCard
        
    }
    
}

