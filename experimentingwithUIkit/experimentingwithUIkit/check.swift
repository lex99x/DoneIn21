import UIKit


class Check: UIViewController {

    @IBOutlet weak var itsDoneButton: UIButton!
    
    @IBOutlet weak var exercises: UICollectionView!
    
    @IBOutlet weak var umdevinte: UILabel!
    
    var cards:[CardDetail] = []
    var selectedCard : CardDetail = CardDetail()
    var isGrenn = false
    let shape = CAShapeLayer()
    
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let circlePath = UIBezierPath(arcCenter:CGPoint(x: 195, y: 340), radius: 100, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)
        
        let trackshape = CAShapeLayer()
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
            CardDetail(exercisename: "Yoga", whatIs: "It is a safe and useful activity for everyone and can help improve general flexibility, neuromuscular coordination, balance and postural awareness.\n\nStretching performed with a volume of 30 to 60 seconds increases joint Range of Motion in most adults, being enough to improve flexibility", benefits: "Consistent joint movement can decrease the risk of injury in activities of daily living, and relieve pain from chronic conditions such as back pain or osteoarthritis.\n\nThey influence both the mind and the body. A prolonged stretching routine can be an excellent method of relaxation and an excellent stress reducer.", cardname: "Yoga",background: UIColor(named: "DoneIn21Blue")!,cardImage: UIImage(named: "yoga1x")!,detailImage: UIImage(named: "yoga1x")!),
            CardDetail(exercisename: "Walk", whatIs: "e andar ora", benefits: "e muito bom pro", cardname: "andar",background: UIColor(named: "DoneIn21Orange")!,cardImage: UIImage(named: "andar1x")!,detailImage: UIImage(named: "yoga1x")!),
            CardDetail(exercisename: "Pushups", whatIs: "description", benefits: "benefits a lot of the,", cardname: "Pushups", background: UIColor(named: "DoneIn21Blue")!, cardImage: UIImage(named: "flexao1x")!,detailImage: UIImage(named: "yoga1x")!),
            CardDetail(exercisename: "Stretching", whatIs: "description", benefits: "benefits", cardname: "Stretching", background: UIColor(named: "DoneIn21Orange")!, cardImage: UIImage(named: "alongamento1x")!,detailImage: UIImage(named: "yoga1x")!),
            CardDetail(exercisename: "Abs", whatIs: "Description", benefits: "benefits", cardname: "Abs", background: UIColor(named: "DoneIn21Blue")!, cardImage: UIImage(named: "abdominal1x")!,detailImage: UIImage(named: "yoga1x")!)
            
            
        ]
      
       
    }

    @IBAction func trocaCor(_ sender: Any) {
      
        
        if isGrenn {
            
        }
        else {
            itsDoneButton.tintColor = UIColor(named: "DoneIn21Green")
            itsDoneButton.backgroundColor = UIColor(named: "DoneIn21Green")
//            view.backgroundColor = UIColor(named: "DoneIn21Green")
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.toValue = 1
            animation.duration = 1.3
            animation.isRemovedOnCompletion = false
            animation.fillMode = .forwards
            shape.add(animation, forKey: "animation")
            
            isGrenn = true
            
        }
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
        print(selectedCard)
    }
}

