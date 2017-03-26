//
//  FacebookAnimation.swift
//  ProtoParticle
//
//  Created by Rebouh Aymen on 14/03/2017.
//  Copyright © 2017 Aymen. All rights reserved.
//

import UIKit

struct FacebookAnimation: Animable {
    
    static let emotionsIcons = [#imageLiteral(resourceName: "ya"), #imageLiteral(resourceName: "wow"), #imageLiteral(resourceName: "sad"),#imageLiteral(resourceName: "love"), #imageLiteral(resourceName: "like"), #imageLiteral(resourceName: "haha"), #imageLiteral(resourceName: "angry")]
    
    var icons: [UIImage] {
        return FacebookAnimation.emotionsIcons
    }
    
    var orientation: Double {
        return -M_PI_2
    }
    
    var position: CGPoint {
        return CGPoint(x: UIScreen.main.bounds.maxX, y: UIScreen.main.bounds.maxY-200)
    }
    
    var size: CGSize {
        return CGSize(width: 400, height: 1)
    }
    
    var birthRate: Float {
        return 0.7
    }
    
    var velocity: CGFloat {
        return 120
    }
    
}
