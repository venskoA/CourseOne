import UIKit
import Darwin
import CoreGraphics

//enum Door {
//    case open
//    case close
//}
//
//enum Transmition {
//    case auto
//    case manual
//    case robot
//}
//
//enum Turbo {
//    case stageOne
//    case stageTwo
//    case stageThree
//}
//
//enum Engin {
//    case work
//    case dontWork
//}
//
//class SportCar {
//    var doorNew: Door
//    var transmitionNew: Transmition
//    var mileageKmNew: Double
//    static var carCount = 0
//    static var weels: Bool = true
//    static var chair: Double = 5
//
//    init(doorNew: Door, mileageKmNew: Double, transmitionNew: Transmition) {
//        self.doorNew = doorNew
//        self.mileageKmNew = mileageKmNew
//        self.transmitionNew = transmitionNew
//        SportCar.carCount += 1
//        print("Init use")
//    }
//
//    deinit {
//        SportCar.carCount -= 1
//    }
//
//    convenience init(chair: Double) {
//        self.init(doorNew: .close, mileageKmNew: 99, transmitionNew: .auto)
//    }
//
//    static func carInfoCount() {
//        print("Выпущено \(self.carCount) автомобиля")
//    }
//}
//
//var carOne = SportCar(doorNew: .close, mileageKmNew: 90, transmitionNew: .auto)
//var carTwo = SportCar(doorNew: .open, mileageKmNew: 1000, transmitionNew: .robot)
//var carThree = SportCar(doorNew: .close, mileageKmNew: 700, transmitionNew: .manual)
//var carFour = SportCar(doorNew: .open, mileageKmNew: 9000, transmitionNew: .robot)
//var carFive: SportCar?
//var carSix: SportCar?
//SportCar.carInfoCount()
//
//carFive = SportCar(doorNew: .open, mileageKmNew: 33, transmitionNew: .manual)
//carSix = carThree
//
//carTwo = carOne
//carThree = carOne
//carFour = carOne
//SportCar.carInfoCount()
//


// Сильные ссылки

class Persona {
    var personaName: String
    init(personaName: String) {
        self.personaName = personaName
        print("Init \(personaName)")
    }
    deinit {"Жилец \(personaName) узжает"}
    var namberHotelPersona: NumderHotel?
}

class NumderHotel {
    var numberHotel: String
    init(numberHotel: String) {
        self.numberHotel = numberHotel
        print("Init \(numberHotel)")
    }
    deinit {"Номер \(numberHotel) освобождается"}
    weak var personaNameNumberHotel: Persona?
}

var andreyV: Persona?
var numberHotelOnline: NumderHotel?

andreyV = Persona(personaName: "Andrey Vensko")
numberHotelOnline = NumderHotel(numberHotel: "44a")

andreyV?.namberHotelPersona = numberHotelOnline
numberHotelOnline?.personaNameNumberHotel = andreyV

andreyV = nil
//numberHotelOnline = nil

let turlesOne = ("Koly", 55)




