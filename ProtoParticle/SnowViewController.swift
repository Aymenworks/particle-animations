//
//  SnowViewController
//  ProtoParticle
//
//  Created by Rebouh Aymen on 08/03/2017.
//  Copyright © 2017 Aymen. All rights reserved.
//

import UIKit

class SnowViewController: UIViewController {

    // MARK: - Lifecycle -
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let animationType = SnowAnimation()
        let emitterLayer = animationType.emitter()
        
        view.layer.addSublayer(emitterLayer)
    }
}

