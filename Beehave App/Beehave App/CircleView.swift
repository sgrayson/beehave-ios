//
//  CircleView.swift
//  Beehave App
//
//  Created by Batman on 2/18/17.
//  Copyright © 2017 Beehave. All rights reserved.
//

import UIKit

//NOT CURRENTLY USED
class CircleView: UIImageView {
    
    private var radius: CGFloat {
        return min(bounds.size.width, bounds.size.height) / 2 * 0.95
    }
    private var midPoint: CGPoint {
        return CGPoint(x: bounds.midX, y: bounds.midY)
    }
    
    private func circle(_ midPoint: CGPoint, _ radius: CGFloat, _ width: CGFloat) -> UIBezierPath {
        let path = UIBezierPath(
            arcCenter: midPoint,
            radius: radius,
            startAngle: 0.0,
            endAngle:
            CGFloat(2*M_PI),
            clockwise: true)
        path.lineWidth = width
        return path
    }

    override func draw(_ rect: CGRect) {
        UIColor.blue.set()
        circle(midPoint, radius, 2.0).stroke()
    }

}
