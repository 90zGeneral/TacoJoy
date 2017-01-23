//
//  MutableCollection+Ext.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/23/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import Foundation

//Extension constrainted to indices of type Int. This will apply to an Array and give it access to the shuffle function
extension MutableCollection where Index == Int {
    
    //Shuffle the Tacos to make them appear in random positions within the collectionView
    mutating func shuffle() {
        
        //No shuffling if there's less than 2 items in the collectionView
        if count < 2 { return }
        
        //Loop
        for a in startIndex ..< endIndex {
            let b = Int(arc4random_uniform(UInt32(endIndex - a))) + a
            guard a != b else { continue }
            swap(&self[a], &self[b])
        }
    }
}
