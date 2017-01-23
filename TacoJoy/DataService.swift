//
//  DataService.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/20/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import Foundation

//Protocol limited to classes oly
protocol DataServiceDelegate: class {
    func TastyTacoDataLoaded()
}

class DataService {
    
    //Singleton
    static let sharedInstance = DataService()
    
    //To access the protocol
    weak var delegate: DataServiceDelegate?
    
    //Array to hold the tacos
    var tacoArray = [Taco]()
    
    //Append the different combinations of tacos into the array by crating new instances of the Taco struct
    func loadTastyTacoData() {
        //Different Beef Taco combination
        tacoArray.append(Taco(id: 1, tacoName: "Loaded Corn Beef Taco", shellID: 1, meatType: 1, typeID: 1))
        tacoArray.append(Taco(id: 2, tacoName: "Loaded Flour Beef Taco", shellID: 2, meatType: 1, typeID: 1))
        tacoArray.append(Taco(id: 3, tacoName: "Plain Corn Beef Taco", shellID: 1, meatType: 1, typeID: 2))
        tacoArray.append(Taco(id: 4, tacoName: "Plain Flour Beef Taco", shellID: 2, meatType: 1, typeID: 2))
        
        //Different Brisket Taco combination
        tacoArray.append(Taco(id: 5, tacoName: "Loaded Corn Brisket Taco", shellID: 1, meatType: 2, typeID: 1))
        tacoArray.append(Taco(id: 6, tacoName: "Loaded Flour Brisket Taco", shellID: 2, meatType: 2, typeID: 1))
        tacoArray.append(Taco(id: 7, tacoName: "Plain Corn Brisket Taco", shellID: 1, meatType: 2, typeID: 2))
        tacoArray.append(Taco(id: 8, tacoName: "Plain Flour Brisket Taco", shellID: 2, meatType: 2, typeID: 2))
        
        //Different Chicken Taco combinations
        tacoArray.append(Taco(id: 9, tacoName: "Loaded Corn Chicken Taco", shellID: 1, meatType: 3, typeID: 1))
        tacoArray.append(Taco(id: 10, tacoName: "Loaded Flour Chicken Taco", shellID: 2, meatType: 3, typeID: 1))
        tacoArray.append(Taco(id: 11, tacoName: "Plain Corn Chicken Taco", shellID: 1, meatType: 3, typeID: 2))
        tacoArray.append(Taco(id: 12, tacoName: "Plain Flour Chicken Taco", shellID: 2, meatType: 3, typeID: 2))
        
        //Different Fish Taco combination
        tacoArray.append(Taco(id: 13, tacoName: "Loaded Corn Fish Taco", shellID: 1, meatType: 4, typeID: 1))
        tacoArray.append(Taco(id: 14, tacoName: "Loaded Flour Fish Taco", shellID: 2, meatType: 4, typeID: 1))
        tacoArray.append(Taco(id: 15, tacoName: "Plain Corn Fish Taco", shellID: 1, meatType: 4, typeID: 2))
        tacoArray.append(Taco(id: 16, tacoName: "Plain Flour Fish Taco", shellID: 2, meatType: 4, typeID: 2))
        
        //Fire up the protocol method when this function runs
        delegate?.TastyTacoDataLoaded()
    }
}
