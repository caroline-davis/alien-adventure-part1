//
//  ItemComparison.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

import Foundation

// Checks to see if lhs has a greater rarity than rhs.
// If it is the same it will then check the baseValue.

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    
    if lhs.rarity.rawValue < rhs.rarity.rawValue {
        return true
    } else if lhs.rarity.rawValue > rhs.rarity.rawValue {
        return false
    } else if lhs.rarity.rawValue == rhs.rarity.rawValue {
        if lhs.baseValue < rhs.baseValue {
            return true
        } else {
            return false
        }
    }
    return false
}


// If you have completed this function and it is working correctly, feel free to skip this part of the adventure by opening the "Under the Hood" folder, and making the following change in Settings.swift: "static var RequestsToSkip = 5"