import UIKit


class check: UIViewController {

   
    @IBOutlet weak var botao1: UIButton!
    
    
    
    var isbranco = true
    var exercicios:[Int] = [1,2,3,4,5]
    
    @IBOutlet weak var exercises: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        exercises.dataSource = self
       
    }
    
    @IBAction func trocacor(_ sender: Any) {
        
        if isbranco {
            view.backgroundColor = UIColor.green
            botao1.setTitle("uncheck", for: .normal)
            isbranco = false
            exercises.backgroundColor = UIColor.green
        }
        else{
            view.backgroundColor = UIColor.systemGray5
            botao1.setTitle("check", for: .normal)
            isbranco = true
            exercises.backgroundColor = UIColor.systemGray5
        }
    }
    
    
}
//a extension e como se fosse um contrato que a viewcontroller assina para admnistrar a UICollectionViewDataSource
extension check:UICollectionViewDataSource{
    
func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 5
}
//quantidade de celulas
func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell: cardcell = exercises.dequeueReusableCell(withReuseIdentifier: "exerciseexample", for: indexPath) as! cardcell
    
    cell.draw(mod: exercicios[indexPath.item])
   
    return cell
}
//com as celulas se parecem

}
