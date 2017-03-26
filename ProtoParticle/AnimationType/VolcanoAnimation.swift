//
//  VolcanoAnimation.swift
//  ProtoParticle
//
//  Created by Rebouh Aymen on 14/03/2017.
//  Copyright © 2017 Aymen. All rights reserved.
//

import UIKit

struct VolcanoAnimation: Animable {
    
    static let circleIcons = [#imageLiteral(resourceName: "circle")]
    
    var icons: [UIImage] {
        return VolcanoAnimation.circleIcons
    }
    
    var orientation: Double {
        return 1.0/M_PI
    }
    
    var colors: [UIColor] {
        return [#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1), #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1), #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)]
    }
    
    var size: CGSize {
        return  CGSize(width: 0, height: 1)
    }
    
    var birthRate: Float {
        return 1.5
    }
    
    var velocity: CGFloat {
        return 100
    }
    
}
