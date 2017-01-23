//
//  TacoCell.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/22/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import UIKit

class TacoCell: UICollectionViewCell {
    
    //Outlets
    @IBOutlet weak var tacoCellImg: UIImageView!
    @IBOutlet weak var tacoCellLbl: UILabel!
    
    var taco: Taco!
    
    //Cell configuration to get its values from a Taco
    func configureCell(taco: Taco) {
        self.taco = taco
        
        //Update the cell views
        tacoCellImg.image = UIImage(named: taco.meatType.rawValue)
        tacoCellLbl.text = taco.tacoName
    }

}
