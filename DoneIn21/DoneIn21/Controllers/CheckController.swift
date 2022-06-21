import UIKit
import FloatingPanel

class Check: UIViewController,FloatingPanelControllerDelegate {
    
    @IBOutlet weak var itsDoneButton: UIButton!
    
    let shape = CAShapeLayer()
    let trackshape = CAShapeLayer()
    var pulsatingLayer: CAShapeLayer!
    var pulsatingLayer2:CAShapeLayer!
    var isGrenn = false
        
    override func viewDidLoad() {
        super.viewDidLoad()
//
//        let fpc = FloatingPanelController()
//        let storyBoard: UIStoryboard = UIStoryboard(name: "Historic", bundle: nil)
//        let contentVC = storyBoard.instantiateViewController(withIdentifier: "Historic") as! HistoricController
//        fpc.set(contentViewController: contentVC)
//        fpc.isRemovalInteractionEnabled = false
//        fpc.layout = MyFloatingPanelLayout()
//        self.present(fpc, animated: true, completion: nil)
        
            let fpc = FloatingPanelController()

            let storyBoard: UIStoryboard = UIStoryboard(name: "Historic", bundle: nil)
            let contentVC = storyBoard.instantiateViewController(withIdentifier: "Historic") as! HistoricController
             fpc.set(contentViewController: contentVC)
             fpc.layout = MyFloatingPanelLayout()

             fpc.addPanel(toParent: self)

        
        itsDoneButton.layer.zPosition = 0
        let circlePath = UIBezierPath(arcCenter: .zero, radius: 120, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)
        
        trackshape.path = circlePath.cgPath
        trackshape.fillColor = UIColor.clear.cgColor
        trackshape.lineWidth = 20
        trackshape.strokeColor = UIColor.systemGray3.cgColor
        trackshape.lineCap = .round
        trackshape.position = CGPoint(x: 195, y: 490)
        trackshape.zPosition = -1
        view.layer.addSublayer(trackshape)
        
        pulsatingLayer = CAShapeLayer()
        pulsatingLayer.path = circlePath.cgPath
        pulsatingLayer.strokeColor = UIColor.clear.cgColor
        pulsatingLayer.lineWidth = 10
        pulsatingLayer.fillColor = UIColor.clear.cgColor
        pulsatingLayer.zPosition = -1
        pulsatingLayer.lineCap = .round
        pulsatingLayer.position = CGPoint(x: 195, y: 490)
        view.layer.addSublayer(pulsatingLayer)
        
        
        
        shape.path = circlePath.cgPath
        shape.lineWidth = 20
        shape.strokeColor = UIColor.systemGreen.cgColor
        shape.fillColor = UIColor.systemGray.cgColor
        shape.strokeEnd = 0
        shape.lineCap = .round
        shape.position = CGPoint(x: 195, y: 490)
        shape.zPosition = -1
        view.layer.addSublayer(shape)
        
        
        
    }
    
    
    @IBAction func Itsdone(_ sender: Any) {
        
        animatePulsatingLayer()
        animatePulsatingLayer2()
        shape.fillColor = UIColor.green.cgColor
        if isGrenn {
            
        } else {
            
            
            
            
            shape.strokeColor = UIColor.systemGreen.cgColor
            
            let animation = CABasicAnimation(keyPath: "strokeEnd")
            animation.toValue = 1
            animation.duration = 1.3
            animation.isRemovedOnCompletion = false
            animation.fillMode = .forwards
            shape.add(animation, forKey: "completing")
            
            
            
            isGrenn = true
            itsDoneButton.isEnabled = false
            
            let timer = Timer.scheduledTimer(withTimeInterval: 2.0, repeats: false) { timer in
                print("timerAtivado")
                
                self.itsDoneButton.isEnabled = true
                
                self.isGrenn = false
                
                
            }
            
        }
    }
    private func animatePulsatingLayer(){
        pulsatingLayer.strokeColor = UIColor.systemGreen.cgColor
        let animation2 = CABasicAnimation(keyPath: "transform.scale")
        animation2.toValue = 1.3
        
        animation2.duration = 0.8
        animation2.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animation2.autoreverses = true
        animation2.repeatCount = 1
        pulsatingLayer.add(animation2, forKey: "pulsing")
    }
    private func animatePulsatingLayer2(){
        let animation3 = CABasicAnimation(keyPath: "transform.scale")
        animation3.toValue = 1.1
        animation3.duration = 0.8
        animation3.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animation3.autoreverses = true
        animation3.repeatCount = 1
        shape.add(animation3, forKey: "pulsing2")
    }
    
}
class MyFloatingPanelLayout: FloatingPanelLayout {
    let position: FloatingPanelPosition = .bottom
    let initialState: FloatingPanelState = .tip
    
    var anchors: [FloatingPanelState: FloatingPanelLayoutAnchoring] {
        return [
            .full: FloatingPanelLayoutAnchor(absoluteInset: 16.0, edge: .top, referenceGuide: .safeArea),
            .half: FloatingPanelLayoutAnchor(fractionalInset: 0.5, edge: .bottom, referenceGuide: .safeArea),
            .tip: FloatingPanelLayoutAnchor(absoluteInset: 44.0, edge: .bottom, referenceGuide: .safeArea),
        ]
    }
}



