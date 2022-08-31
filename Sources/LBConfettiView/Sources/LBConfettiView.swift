//
//  LBConfettiView.swift
//  LBConfettiView
//
//  Created by Lachlan Bell on 29/11/18.
//  Copyright © 2018 Lachlan Bell. All rights reserved.
//

import UIKit

public class ConfettiView: UIView {
    
    // MARK: - Public properties
    /// How many confetti particles to emit and their velocity
    public var intensity: Float = 0.5
    
    /// Style of confetti
    public var style: ConfettiStyle = .confetti
    
    /// Scale - defaults to auto
    public var scale: ConfettiScale = .auto
    
    /// Confetti colors
    public var colors = [UIColor(red:0.95, green:0.40, blue:0.27, alpha:1.0),
                         UIColor(red:1.00, green:0.78, blue:0.36, alpha:1.0),
                         UIColor(red:0.48, green:0.78, blue:0.64, alpha:1.0),
                         UIColor(red:0.30, green:0.76, blue:0.85, alpha:1.0),
                         UIColor(red:0.58, green:0.39, blue:0.55, alpha:1.0)]
    
    public private(set) var animating = false
    
    // MARK: - Private properties
    private var emitterLayer = CAEmitterLayer()
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        self.isUserInteractionEnabled = false
        self.clipsToBounds = true
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Animation
    /// Start animating confetti
    public func start() {
        emitterLayer.removeFromSuperlayer()
        
        emitterLayer.emitterPosition = CGPoint(x: frame.size.width / 2.0, y: 0)
        emitterLayer.emitterShape = CAEmitterLayerEmitterShape.line
        emitterLayer.emitterSize = CGSize(width: frame.size.width, height: 1)

        let cells = colors.map({
            return confettiWithColor(color: $0)
        })
        
        emitterLayer.emitterCells = cells
        
        emitterLayer.birthRate = 1.0
        
        layer.addSublayer(emitterLayer)
        animating = true
    }
    
    /// Stop animating confetti
    /// - parameter clear: Immediately remove confetti view
    public func stop(clear: Bool = false) {
        if clear {
            emitterLayer.removeFromSuperlayer()
        } else {
            emitterLayer.birthRate = 0
        }
        
        animating = false
    }
    
    private func confettiWithColor(color: UIColor) -> CAEmitterCell {
        let confetti = CAEmitterCell()
        confetti.scale = scale.scaleValue
        confetti.birthRate = 6.0 * intensity
        confetti.lifetime = 14.0 * intensity
        confetti.lifetimeRange = 0
        confetti.color = color.cgColor
        confetti.velocity = CGFloat(350.0 * intensity)
        confetti.velocityRange = CGFloat(80.0 * intensity)
        confetti.emissionLongitude = CGFloat(Double.pi)
        confetti.emissionRange = CGFloat(Double.pi)
        confetti.spin = CGFloat(3.5 * intensity)
        confetti.spinRange = CGFloat(4.0 * intensity)
        confetti.scaleRange = CGFloat(intensity)
        confetti.scaleSpeed = CGFloat(-0.1 * intensity)
        confetti.contents = style.image?.cgImage
        confetti.alphaSpeed = -1.0 / (14.0 * intensity)
        
        return confetti
    }
}
