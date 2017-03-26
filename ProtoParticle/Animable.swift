//
//  Animable.swift
//  ProtoParticle
//
//  Created by Rebouh Aymen on 13/03/2017.
//  Copyright © 2017 Aymen. All rights reserved.
//

import UIKit

protocol Animable {
    var icons: [UIImage] { get }
    var orientation: Double { get }
    var position: CGPoint { get }
    var shape: String { get }
    var size: CGSize { get }
    var renderMode: String { get }

    /// The color tint to apply to the contents
    var colors: [UIColor] { get }
    
    /// The number of emitted particles per second
    var birthRate: Float { get }
    
    /// It seems to be the speed at a given moment. So the bigger the value, the quicker the animation will be
    var velocity: CGFloat { get }
    
}

extension Animable {
    var shape: String {
        return kCAEmitterLayerLine
    }
    
    var colors: [UIColor] {
        return []
    }
    
    var position: CGPoint {
        return .zero
    }
    
    var renderMode: String {
        return kCAEmitterLayerUnordered
    }
}


extension Animable {
    
    func emitter() -> CAEmitterLayer {
        
        let emitter = CAEmitterLayer()
        
        emitter.emitterShape    = self.shape
        emitter.emitterPosition = self.position
        emitter.emitterSize     = self.size
        emitter.renderMode      = self.renderMode
        emitter.emitterCells    = self.icons.map { emitterCell(withImage: $0) }

        if self.colors.isEmpty {
            emitter.emitterCells  = self.icons.map { emitterCell(withImage: $0) }
            
        } else {
            emitter.emitterCells  = self.colors.enumerated().map { emitterCell(withImage: self.icons.first!, usingColor: $0.element) }
        }

        return emitter
    }
    
    func emitterCell(withImage image: UIImage, usingColor color: UIColor? = nil) -> CAEmitterCell {
        
        let emitterCell = CAEmitterCell()
        
        emitterCell.birthRate         = self.birthRate
        emitterCell.lifetime          = 7
        emitterCell.velocity          = self.velocity // the bigger the value is, the quicker the fruit move
        emitterCell.emissionLongitude = CGFloat(self.orientation)
        emitterCell.emissionRange     = CGFloat(M_1_PI) // 🤡😐
        emitterCell.contents          = image.cgImage
        emitterCell.scaleSpeed        = -0.1 // The bigger the value is, the quicker the fruit size grow
        
        if let color = color {
            emitterCell.color = color.cgColor
        }

        return emitterCell
    }
}
