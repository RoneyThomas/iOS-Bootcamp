//
//  Car.swift
//  Classes and Objects
//
//  Created by Roney Thomas Mannoocheril on 2019-06-29.
//  Copyright © 2019 Roney Thomas Mannoocheril. All rights reserved.
//

import Foundation

enum CarType {
    case Sedan
    case Coupe
    case Hatcheback
}

class Car {
    var color: String = "Black"
    let numberOfSeats = 5
    var carType: CarType = .Coupe
    
    init() {
        
    }
    
    convenience init(customerChosenCar: String) {
        self.init()
        color = customerChosenCar
    }
    
    func drive() {
        print("Car is moving")
    }
}
