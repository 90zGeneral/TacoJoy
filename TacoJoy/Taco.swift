//
//  Taco.swift
//  TacoJoy
//
//  Created by Roydon Jeffrey on 1/20/17.
//  Copyright © 2017 Italyte. All rights reserved.
//

import Foundation

//Cases for taco shells
enum TacoShell: Int {
    case Corn = 1
    case Flour = 2
}

//Cases for taco meat
enum TacoMeat: String {
    case Beef = "Beef"
    case Brisket = "Brisket"
    case Chicken = "Chicken"
    case Fish = "Fish"
}

//Cases for taco types
enum TacoType: Int {
    case Loaded = 1
    case Plain = 2
}

struct Taco {
    
    //Private variables for thid file only
    private var _id: Int!
    private var _tacoName: String!
    private var _shellID: TacoShell!
    private var _meatType: TacoMeat!
    private var _typeID: TacoType!
    
    //Getters
    var id: Int {
        return _id
    }
    
    var tacoName: String {
        return _tacoName
    }
    
    var shellID: TacoShell {
        return _shellID
    }
    
    var meatType: TacoMeat {
        return _meatType
    }
    
    var typeID: TacoType {
        return _typeID
    }
    
    init(id: Int, tacoName: String, shellID: Int, meatType: Int, typeID: Int) {
        self._id = id
        self._tacoName = tacoName
        
        //To set the taco shell
        switch shellID {
        case 1:
            self._shellID = TacoShell.Corn
        default:
            self._shellID = TacoShell.Flour
        }
        
        //To set the taco meat
        switch meatType {
        case 1:
            self._meatType = TacoMeat.Beef
        case 2:
            self._meatType = TacoMeat.Brisket
        case 3:
            self._meatType = TacoMeat.Fish
        default:
            self._meatType = TacoMeat.Chicken
        }
        
        //To set the taco type
        switch typeID {
        case 1:
            self._typeID = TacoType.Plain
        default:
            self._typeID = TacoType.Loaded
        }
    }
}


