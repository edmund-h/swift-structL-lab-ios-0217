//
//  Person.swift
//  StructLove
//
//  Created by Michael Dippery on 8/18/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

struct Person {
    var firstName, lastName : String
    let home: Coordinate
    var isHungry: Bool
    
    init (firstName myfirst: String, lastName myLast: String, home myHome: Coordinate) {
        firstName = myfirst
        lastName = myLast
        home = myHome
        isHungry = true
    }
    
    mutating func eatPizza(from service: PizzaDeliveryService) -> Bool{ //from is external name, service internal
        if self.isHungry && service.isInRange(to: home) {
            isHungry = false
            return true
        }
        return false
    }
}
