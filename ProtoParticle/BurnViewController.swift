//
//  BurnViewController.swift
//  ProtoParticle
//
//  Created by Rebouh Aymen on 13/03/2017.
//  Copyright © 2017 Aymen. All rights reserved.
//

import UIKit

class BurnViewController: UIViewController {
    
    // MARK: - Properties -
    
    @IBOutlet weak var volcanoImageView: UIImageView!
    
    // MARK: - Lifecycle -
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let animationType = VolcanoAnimation()
        let emitterLayer = animationType.emitter()
        emitterLayer.emitterPosition = CGPoint(x: UIScreen.main.bounds.width/2.0, y: volcanoImageView.frame.minY)
        view.layer.addSublayer(emitterLayer)
    }
}

