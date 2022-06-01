import UIKit


class Check: UIViewController {

    @IBOutlet weak var itsDoneButton: UIButton!
    @IBOutlet weak var checkimage: UIImageView!
    @IBOutlet weak var exercises: UICollectionView!
    
    
    var cards:[CardDetail] = []
    var selectedCard : CardDetail = CardDetail()
    var isGrenn = false
    let shape = CAShapeLayer()
    
   
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let circlePath = UIBezierPath(arcCenter:CGPoint(x: 193, y: 271), radius: 100, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)
        
        let trackshape = CAShapeLayer()
        trackshape.path = circlePath.cgPath
        trackshape.fillColor = UIColor.clear.cgColor
        trackshape.lineWidth = 15
        trackshape.strokeColor = UIColor.systemGray3.cgColor
        view.layer.addSublayer(trackshape)

        shape.path = circlePath.cgPath
        shape.lineWidth = 15
        shape.strokeColor = UIColor(named:"DoneIn21Green")?.cgColor
        shape.fillColor = UIColor.clear.cgColor
        shape.strokeEnd = 0
        view.layer.addSublayer(shape)

        exercises.dataSource = self
        exercises.delegate = self
        cards = [
            CardDetail(exercisename: "Yoga", whatIs: "exercicio de respiracao", benefits: "e muito bom confia", cardname: "Yoga",background: .systemGray5,cardImage: UIImage(named: "yoga")!),
            CardDetail(exercisename: "andar", whatIs: "e andar ora", benefits: "e muito bom pro", cardname: "andar",background: .systemGray5,cardImage: UIImage(systemName: "square.and.arrow.up.circle")!)
        ]
      
       
    }

    @IBAction func trocaCor(_ sender: Any) {
      
        
        if isGrenn {
            
        }
        else {
            itsDoneButton.backgroundColor = UIColor(named: "DoneIn21Green")
            checkimage.tintColor = UIColor(named: "DoneIn21Green")
    
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

