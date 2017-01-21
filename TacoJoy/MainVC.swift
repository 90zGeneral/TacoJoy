//
//  MainVC.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/20/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //Outlet
    @IBOutlet weak var headerView: HeaderView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Call addDropShadow on the headerView
        headerView.addDropShadow()
        
    }

}

