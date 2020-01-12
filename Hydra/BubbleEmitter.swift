//
//  BubbleEmitter.swift
//  Hydra
//
//  Created by Chloe Yan on 1/1/20.
//  Copyright © 2020 Chloe Yan. All rights reserved.
//
//  Animates the emission of objects from a customizable direction and range.

import Foundation
import UIKit

class BubbleEmitter {
    static func get(with image: UIImage) -> CAEmitterLayer {
        let emitter = CAEmitterLayer()
        emitter.emitterShape = CAEmitterLayerEmitterShape.line
        emitter.emitterCells = generateEmitterCells(with: image)
        return emitter
    }
    
    static func generateEmitterCells(with image: UIImage) -> [CAEmitterCell] {
        var cells = [CAEmitterCell]()
        let cell = CAEmitterCell()
        
        cell.contents = image.cgImage
        cell.birthRate = 2
        cell.lifetime = 7
        cell.velocity = CGFloat(20)
        cell.emissionLongitude = 0
        cell.emissionRange = (45 * (.pi/180))
        cell.scale = 0.06
        cell.scaleRange = 0.1
        let hvc = HomeViewController()
        print("view bounds maxY: ", hvc.homeView.bounds.maxY)
        
        cells.append(cell)
        return cells
    }
}
