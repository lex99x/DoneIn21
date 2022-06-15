//nao estou utilizando agora
import Foundation
import UIKit

class ItsDoneButton: UIView {
 
    
    override init(frame: CGRect) {
        super.init(frame: .zero)
        
        layer.addSublayer(trackshape)
        layer.addSublayer(pulsatingLayer)
        layer.addSublayer(shape)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
}
    private let trackshape: CAShapeLayer = circleLayer(color: UIColor.systemGreen.cgColor)
    private let shape: CAShapeLayer = circleLayer(color:  UIColor.systemGreen.cgColor)
    private let pulsatingLayer: CAShapeLayer = circleLayer(color:  UIColor.systemGreen.cgColor)

    
    
    private static func circleLayer(color: CGColor) -> CAShapeLayer {
        let circlePath = UIBezierPath(arcCenter: .zero, radius: 120, startAngle: -(.pi / 2), endAngle: .pi * 2, clockwise: true)
        let circleLayer = CAShapeLayer()
        circleLayer.path = circlePath.cgPath
        circleLayer.lineWidth = 20
        circleLayer.strokeColor = UIColor.systemGray.cgColor
        circleLayer.fillColor = UIColor.clear.cgColor
        return circleLayer
    }
}

