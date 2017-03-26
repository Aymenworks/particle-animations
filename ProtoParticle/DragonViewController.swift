//
//  DragonViewController.swift
//  ProtoParticle
//
//  Created by Rebouh Aymen on 14/03/2017.
//  Copyright © 2017 Aymen. All rights reserved.
//

import UIKit

class DragonViewController: UIViewController {

    // MARK: - Properties -
    
    @IBOutlet weak var dragonImageView: UIImageView!
    
    // MARK: - Lifecycle -
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        view.backgroundColor = .black
        let animationType = DragonAnimation()
        let emitterLayer = animationType.emitter()
        
        emitterLayer.emitterPosition = CGPoint(x: dragonImageView.frame.maxX + 15.0, y: dragonImageView.frame.minY + dragonImageView.bounds.height/2.0)
        view.layer.addSublayer(emitterLayer)
    }
}

