//
//  main.swift
//  Classes and Objects
//
//  Created by Roney Thomas Mannoocheril on 2019-06-29.
//  Copyright © 2019 Roney Thomas Mannoocheril. All rights reserved.
//

import Foundation

let myCar = Car()
print(myCar.color)
print(myCar.carType)
print(myCar.numberOfSeats)
myCar.drive()

let someRichGuyCar = Car(customerChosenCar: "Gold")
print(someRichGuyCar.color)
print(someRichGuyCar.carType)
print(someRichGuyCar.numberOfSeats)

let aiCar = SelfDrivingCar()
print(aiCar.color)
print(aiCar.carType)
//aiCar.destination = "1 Hacker Way"
aiCar.drive()
