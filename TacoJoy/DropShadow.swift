//
//  DropShadow.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/20/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import UIKit

protocol DropShadow {}

//To contraint this extension to a specific type. Protocols and Extensions refer to 'self' in a capitalized form
extension DropShadow where Self: UIView {
    
    //To customize the header view shadow layer
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 5
    }
    
}
