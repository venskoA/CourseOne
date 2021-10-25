//
//  main.swift
//  CourseOne
//
//  Created by Andrey Vensko on 15.10.21.
//

import Foundation

enum ModelSuper {
    case bmw, mersedes, audi, vw, porshe, ferrari, lamborgini, rollsRoylse
}

enum ModelTruck {
    case volvo, daf, keenword, scania, peeterbilt
}

enum Color {
    case blue, red, white, green, purpule, yellow, black
}

enum Transmition {
    case auto, mehanic, robot
}

enum Wheel {
    case winter, spring
}

enum WheelSizeSuper: String {
    case small = " for 12 to 15 "
    case meddle = " for 15 to 18 "
    case big = " for 18 to 22 "
}

enum WheelSizeTruck: String {
    case small = " for 18 to 20 "
    case meddle = " for 20 to 24 "
    case big = " for 24 to 32 "
}

enum SideRubber {
    case left, right
}

enum HeadLight {
    case led, ksenon, galogen
}

enum Fuel {
    case gas, disel, electro, bioCar
}

enum Modificat {
    case damTruck, truck, carTruck
}

enum Endine {
    case work, dontWork
}

enum Windows: String {
    case open = "Окно открыто"
    case close = "Окно закрыто"
}

enum Bag {
    case pogruzka
    case razgruzka
}

enum Door {
       case open
       case close
   }

struct SuperCar {

    let model: ModelSuper
    let year: Int
    let color: Color
    let transmition: Transmition
    let wheel: Wheel
    let wheelSizeSuper: WheelSizeSuper
    var door: Door
    let mileageKm: Double
    let airCondition: Bool
    let sideRubber: SideRubber
    let namderChair: Int
    let headLight: HeadLight
    let fuel: Fuel
    var endine: Endine {
        get {
            if door == .open {
                return .dontWork
            } else {
                return .work
            }
        }
    }
    let window: Windows
    let bag: Bag

    mutating func doorMut() {
        self.door = .close
    }
}

struct TruckCar {
    let model: ModelTruck
    let year: Int
    let modificat: Modificat
    let color: Color
    let transmition: Transmition
    let wheel: Wheel
    let wheelSizeSuper: WheelSizeTruck
    let mileageKm: Double
    let airCondition: Bool
    let sideRubber: SideRubber
    let namderChair: Int
    let headLight: HeadLight
    let fuel: Fuel
    let endine: Endine
    let window: Windows
    let bag: Bag
    let sizeBag: Double
}

var car1 = SuperCar(model: .bmw, year: 2018, color: .green, transmition: .robot, wheel: .spring, wheelSizeSuper: .meddle, door: .open, mileageKm: 135000, airCondition: true, sideRubber: .left, namderChair: 5, headLight: .led, fuel: .gas, window: .open, bag: .pogruzka)

var car2 = TruckCar(model: .keenword, year: 2008, modificat: .truck, color: .red, transmition: .auto, wheel: .spring, wheelSizeSuper: .big, mileageKm: 3000000, airCondition: true, sideRubber: .left, namderChair: 2, headLight: .led, fuel: .disel, endine: .dontWork, window: .close, bag: .pogruzka, sizeBag: 800)

if car1.door == .close {
    print("Door open")
} else {
    print("Door close")
}

print(car1.endine)
print(car2.mileageKm)
print(car2)
