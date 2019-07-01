//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Roney Thomas Mannoocheril on 2019-06-29.
//  Copyright © 2019 Roney Thomas Mannoocheril. All rights reserved.
//

import Foundation

class SelfDrivingCar: Car {
    var destination: String?
    
    override func drive() {
        super.drive()
        if let userDestination = destination {
            print("Driving Towards", userDestination)
        }
    }
}
