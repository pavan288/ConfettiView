//
//  ViewController.swift
//  ParticleEmitter
//
//  Created by Pavan Powani on 03/11/19.
//  Copyright © 2019 PavanPowani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let confettiView = ConfettiView(frame: self.view.frame)
        self.view.addSubview(confettiView)

        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            confettiView.stopEmitting()
        }
    }
}

