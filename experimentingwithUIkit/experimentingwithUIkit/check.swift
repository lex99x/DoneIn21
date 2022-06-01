import UIKit


class check: UIViewController {

    @IBOutlet weak var itsDoneButton: UIButton!
    

    var cards:[CardDetail] = []
    var selectedCard : CardDetail = CardDetail()
    var isGrenn = false
    
    @IBOutlet weak var exercises: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        exercises.dataSource = self
        exercises.delegate = self
        cards = [
            CardDetail(exercisename: "Yoga", whatIs: "exercicio de respiracao", benefits: "e muito bom confia", cardname: "Yoga",background: .systemGray5),
            CardDetail(exercisename: "andar", whatIs: "e andar ora", benefits: "e muito bom pro", cardname: "andar",background: .systemGray5)
        ]
      
       
    }

    
   
    @IBAction func trocaCor(_ sender: Any) {
        if isGrenn {
            
        }
        else {
            itsDoneButton.backgroundColor = UIColor.systemGreen
        }
    }
    
    
}

extension check:UICollectionViewDataSource{
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return cards.count
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell: cardcell = exercises.dequeueReusableCell(withReuseIdentifier: "exerciseexample", for: indexPath) as! cardcell
  

    cell.draw(card: cards[indexPath.item])
    return cell
}

}
extension check: UICollectionViewDelegate{
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

