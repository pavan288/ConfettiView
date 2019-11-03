//
//  ConfettiView.swift
//  ParticleEmitter
//
//  Created by Pavan Powani on 03/11/19.
//  Copyright © 2019 PavanPowani. All rights reserved.
//

import UIKit

class ConfettiView: UIView {
    var particleEmitter = CAEmitterLayer()

    override init(frame: CGRect) {
        super.init(frame: frame)
        createParticles()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        createParticles()
    }

    public func stopEmitting() {
        particleEmitter.birthRate = 0
    }

    private func createParticles() {
        particleEmitter.emitterPosition = CGPoint(x: self.center.x, y: -96)
        particleEmitter.emitterShape = .line
        particleEmitter.emitterSize = CGSize(width: self.frame.size.width, height: 1)

        let red = makeEmitterCell(color: UIColor.red)
        let green = makeEmitterCell(color: UIColor.green)
        let blue = makeEmitterCell(color: UIColor.blue)

        particleEmitter.emitterCells = [red, green, blue]

        self.layer.addSublayer(particleEmitter)
    }

    private func makeEmitterCell(color: UIColor) -> CAEmitterCell {
        let cell = CAEmitterCell()
        cell.birthRate = 3.5
        cell.lifetime = 7.0
        cell.lifetimeRange = 0
        cell.color = color.cgColor
        cell.velocity = 200
        cell.velocityRange = 50
        cell.emissionLongitude = CGFloat.pi
        cell.emissionRange = CGFloat.pi / 4
        cell.spin = 2
        cell.spinRange = 3
        cell.scaleRange = 1.0
        cell.scaleSpeed = -0.05

        cell.contents = UIImage(named: "confetti_triangle_filled_small")?.cgImage
        return cell
    }

}
