//
//  NibLoadableView.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/22/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import UIKit

//Limited to a class
protocol NibLoadableView: class {}

//Constraint to a UIView
extension NibLoadableView where Self: UIView {
    
    //
    static var nibName: String {
        return String(describing: self)
    }
}
