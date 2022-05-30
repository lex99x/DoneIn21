import UIKit


class check: UIViewController {

 
    var exercicios:[Int] = [1,2,3,4,5]
    var selectedCard: Int = 0
    
    @IBOutlet weak var exercises: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        exercises.dataSource = self
        exercises.delegate = self
       
    }
    
    
    
}

extension check:UICollectionViewDataSource{
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell: cardcell = exercises.dequeueReusableCell(withReuseIdentifier: "exerciseexample", for: indexPath) as! cardcell
  

    cell.draw(mod: exercicios[indexPath.item])
    return cell
}

}
extension check: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedCard = exercicios[indexPath.item]
        print(selectedCard)
        performSegue(withIdentifier: "showdetail", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc : ExerciseDetail = segue.destination as! ExerciseDetail
        vc.clickedCard = selectedCard
    }
}

