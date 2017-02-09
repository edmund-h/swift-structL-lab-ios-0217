//
//  Coordinate.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Coordinate {
    var latitude, longitude : Double
    
    init (latitude myLat: Double, longitude myLon: Double){
        latitude = myLat
        longitude = myLon
    }
    var isInNorthernHemisphere: Bool {
        return latitude > 0
    }
    var isInSouthernHemisphere: Bool {
        return latitude < 0
    }
    var isInWesternHemisphere: Bool {
        return longitude > 0
    }
    var isInEasternHemisphere: Bool {
        return longitude < 0
    }
    func distance(to: Coordinate)->Double{
        let latitude1 = latitude.radians    //native lat ->rad
        let latitude2 = to.latitude.radians //incoming lat ->rad
        let longitude1 = longitude.radians   //native long ->rad
        let longitude2 = to.longitude.radians//incoming long -> rad
        return acos(sin(latitude1) * sin(latitude2) + cos(latitude1) * cos(latitude2) * cos(longitude1-longitude2)) * 6371000 / 1000 //monster fromula pasted from learn co
    }
    
}




// Any double type has now the radians computed property available to it thanks to this extension.

// For Example 
// let number = 5.0
// number.radians

extension Double {
    var radians: Double {
        return self * M_PI / 180
    }
}
