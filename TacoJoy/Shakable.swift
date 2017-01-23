//
//  Shakable.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/23/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import UIKit

protocol Shakable {}

//Contraint to a UIView
extension Shakable where Self: UIView {
    
    //to control the shaking of a cell when it is tapped
    func shake() {
        let animate = CABasicAnimation(keyPath: "position")
        animate.duration = 1
        animate.repeatCount = 5
        animate.autoreverses = true
        animate.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - 5, y: self.center.y))
        animate.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + 5, y: self.center.y))
        layer.add(animate, forKey: "position")
    }
}
