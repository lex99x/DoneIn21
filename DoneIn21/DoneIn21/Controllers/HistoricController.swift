
import UIKit
import Foundation

class HistoricController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.dataSource = self
        
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 21
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCollectionViewCell", for: indexPath) as! CustomCollectionViewCell
        
        let checkDays = UserDefaults.standard.object(forKey: "checkDays") as? [Bool] ?? [Bool]()
        
        print(checkDays)
        
        if(checkDays[indexPath.item]) {
            cell.imageView.image = UIImage(named: "day\(String(indexPath.item + 1))verde")
        } else {
            cell.imageView.image = UIImage(named: "day\(String(indexPath.item + 1))laranja")
        }
        
        cell.label.text = "Day \(indexPath.item + 1)"
        
        return cell
        
    }
    
}
