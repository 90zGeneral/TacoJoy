//
//  CollectionView+Ext.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/22/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import UIKit

//Extending the collectionView class
extension UICollectionView {
    
    //Generic function to connect the TacoCell to the collectionView by conforming to the ReusableView and NibLoadedView protocols
    func registeringNib<T: UICollectionViewCell>(_: T.Type) where T: ReusableView, T: NibLoadableView {
        
        //Grab the name of the Nib file
        let nib = UINib(nibName: T.nibName, bundle: nil)
        
        //Register the nib with its reuse identifier
        register(nib, forCellWithReuseIdentifier: T.reuseIdentifier)
    }
    
    //To dequeue the nib cell for reuse
    func dequeueReusableCell<T: UICollectionViewCell>(forIndexPath indexPath: IndexPath) -> T where T: ReusableView {
    
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath as IndexPath) as? T else {
            
            fatalError("Could not dueue cell with identifier: \(T.reuseIdentifier)")
        }
    
        return cell
    }
    
}

//Extend the collectionViewCell for it to conform to ReusableView
extension UICollectionViewCell: ReusableView {}
