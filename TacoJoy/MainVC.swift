//
//  MainVC.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/20/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, DataServiceDelegate {
    
    //Outlet
    @IBOutlet weak var headerView: HeaderView!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //Grab the data service instance to pass it within this file
    var dataServiceInstance: DataService = .sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Allow the collectionView to communicate with the viewController
        collectionView.delegate = self
        collectionView.dataSource = self
        
        //Call addDropShadow on the headerView
        headerView.addDropShadow()
        
        //Access the delegate load the taco data when view loads
        dataServiceInstance.delegate = self
        dataServiceInstance.loadTastyTacoData()
        
/*
        //OLD WAY: To load up the nib cell into the collectionView when the view loads.
        let nib = UINib(nibName: "TacoCell", bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: "TacoCell")
 */
        //NEW WAY: To load up the nib cell into the collectionView when the view loads. Also, conform the TacoCell to NibLoadableView
        collectionView.registeringNib(TacoCell.self)
        
    }
    
    //To conform to custom protocol
    func TastyTacoDataLoaded() {
        print("Tasty Taco Data Loaded")
    }
    
    //The 3 methods below is needed to conform to UICollectionView delegate and dataSource
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataServiceInstance.tacoArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
/*
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "TacoCell", for: indexPath) as? TacoCell {
            let chosenTaco = dataServiceInstance.tacoArray[indexPath.row]
            cell.configureCell(taco: chosenTaco)
            return cell
            
        }else {
            return UICollectionViewCell()
        }
 */
        //The reuseIdentifier is not needed here since I created it in my custom protocol
        let cell = collectionView.dequeueReusableCell(forIndexPath: indexPath) as TacoCell
        let chosenCell = dataServiceInstance.tacoArray[indexPath.row]
        cell.configureCell(taco: chosenCell)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 100, height: 100)
    }

}

