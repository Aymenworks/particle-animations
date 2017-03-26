//
//  DragonAnimation.swift
//  ProtoParticle
//
//  Created by Rebouh Aymen on 14/03/2017.
//  Copyright © 2017 Aymen. All rights reserved.
//

import UIKit

struct DragonAnimation: Animable {
    
    static let circleIcons = [#imageLiteral(resourceName: "snowing")]
    
    var icons: [UIImage] {
        return DragonAnimation.circleIcons
    }
    
    var orientation: Double {
        return M_PI_2
    }
    
    var colors: [UIColor] {
        return [#colorLiteral(red: 0.9988493323, green: 0.705653131, blue: 0.196046561, alpha: 1), #colorLiteral(red: 1, green: 0.5899432302, blue: 0.214745611, alpha: 1), #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)]
    }
    
    var size: CGSize {
        return  CGSize(width: 1, height: 1)
    }
    
    var birthRate: Float {
        return 200
    }
    
    var velocity: CGFloat {
        return 90
    }
    
    var renderMode: String {
        return kCAEmitterLayerAdditive
    }
}
