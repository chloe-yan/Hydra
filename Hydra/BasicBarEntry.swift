//
//  BasicBarEntry.swift
//  Hydra
//
//  Created by Chloe Yan on 2/13/20.
//  Copyright © 2020 Chloe Yan. All rights reserved.
//

import Foundation
import CoreGraphics.CGGeometry

struct BasicBarEntry {
    let origin: CGPoint
    let barWidth: CGFloat
    let barHeight: CGFloat
    let space: CGFloat
    let data: DataEntry
    
    var bottomTitleFrame: CGRect {
        return CGRect(x: origin.x - space/2, y: origin.y + 10 + barHeight, width: barWidth + space, height: 22)
    }
    
    var textValueFrame: CGRect {
        return CGRect(x: origin.x - space/2, y: origin.y - 30, width: barWidth + space, height: 22)
    }
    
    var barFrame: CGRect {
        return CGRect(x: origin.x, y: origin.y, width: barWidth, height: barHeight)
    }
}
