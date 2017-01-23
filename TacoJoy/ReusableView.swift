//
//  ReusableView.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/22/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import UIKit

//Protocol limited to a class
protocol ReusableView: class {}

//Constraint to a UIView
extension ReusableView where Self: UIView {
    
    //Takes care of the reusable identifier for the cell by simply using the name of the cell class as the identifier.
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

