import UIKit
import FloatingPanel

class Check: UIViewController {
    
    @IBOutlet weak var itsDoneButton: UIButton!

    let shape = CAShapeLayer()
    let trackshape = CAShapeLayer()
    var pulsatingLayer: CAShapeLayer!
    var pulsatingLayer2:CAShapeLayer!
    var isGrenn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
      
        itsDoneButton.layer.zPosition = 1
        let circlePath = UIBezierPath(arcCenter: .zero, radius: 120, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)

        trackshape.path = circlePath.cgPath
        trackshape.fillColor = UIColor.clear.cgColor
        trackshape.lineWidth = 20
        trackshape.strokeColor = UIColor.systemGray3.cgColor
        trackshape.lineCap = .round
        trackshape.position = CGPoint(x: 195, y: 490)
        trackshape.zPosition = 0
        view.layer.addSublayer(trackshape)

        pulsatingLayer = CAShapeLayer()
        pulsatingLayer.path = circlePath.cgPath
        pulsatingLayer.strokeColor = UIColor.clear.cgColor
        pulsatingLayer.lineWidth = 10
        pulsatingLayer.fillColor = UIColor.clear.cgColor
        pulsatingLayer.zPosition = 0
        pulsatingLayer.lineCap = .round
        pulsatingLayer.position = CGPoint(x: 195, y: 490)
        view.layer.addSublayer(pulsatingLayer)
        //
        //        pulsatingLayer2 = CAShapeLayer()
        //        pulsatingLayer2.path = circlePath.cgPath
        //        pulsatingLayer2.strokeColor = UIColor.clear.cgColor
        //        pulsatingLayer2.lineWidth = 10
        //        pulsatingLayer2.fillColor = UIColor.clear.cgColor
        //        pulsatingLayer2.zPosition = 0
        //        pulsatingLayer2.lineCap = .round
        //        pulsatingLayer2.position = view.center
        //        view.layer.addSublayer(pulsatingLayer2)


        shape.path = circlePath.cgPath
        shape.lineWidth = 20
        shape.strokeColor = UIColor.systemGreen.cgColor
        shape.fillColor = UIColor.systemGray.cgColor
        shape.strokeEnd = 0
        shape.lineCap = .round
        shape.position = CGPoint(x: 195, y: 490)
        shape.zPosition = 0
        view.layer.addSublayer(shape)

        
        
    }
    private func animatePulsatingLayer(){
        pulsatingLayer.strokeColor = UIColor.systemGreen.cgColor
        let animation2 = CABasicAnimation(keyPath: "transform.scale")
        animation2.toValue = 1.3
        //        animation2.toValue = 1.5
        
        animation2.duration = 0.8
        animation2.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animation2.autoreverses = true
        animation2.repeatCount = Float.infinity
        pulsatingLayer.add(animation2, forKey: "pulsing")
    }
    private func animatePulsatingLayer2(){
        //        pulsatingLayer2.strokeColor = UIColor.systemGreen.cgColor
        let animation3 = CABasicAnimation(keyPath: "transform.scale")
        animation3.toValue = 1.1
        animation3.duration = 0.8
        animation3.timingFunction = CAMediaTimingFunction(name: .easeOut)
        animation3.autoreverses = true
        animation3.repeatCount = Float.infinity
        shape.add(animation3, forKey: "pulsing2")
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
    
}


