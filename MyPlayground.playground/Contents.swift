// Lesson Four

import UIKit
import Darwin

enum Door {
    case open
    case close
}

enum Transmition {
    case auto
    case manual
    case robot
}

enum Turbo {
    case stageOne
    case stageTwo
    case stageThree
}

enum Engin {
    case work
    case dontWork
}

class SportCar {
    var doorNew: Door
    var transmitionNew: Transmition
    var mileageKmNew: Double
    static var carCount = 0
    var numberDoor: Double
    static var weels: Bool = true
    static var chair: Double = 5

    init(doorNew: Door, mileageKmNew: Double, transmitionNew: Transmition, forNumber kolDoor: Double) {
        self.doorNew = doorNew
        self.mileageKmNew = mileageKmNew
        self.transmitionNew = transmitionNew
        SportCar.carCount += 1
        numberDoor = kolDoor - 7
    }

    deinit {
        print("Ddksfnjkvnjknvjksk")
    }

    convenience init(chair: Double) {
        self.init(doorNew: .close, mileageKmNew: 99, transmitionNew: .auto, forNumber: 10)
    }

    static func carInfoCount() {
        print("Выпущено \(self.carCount) автомобиля")
    }

    func numberDoorInCar() {
        print(numberDoor)
    }

}

class SportCarVw: SportCar {
    var turbo: Turbo

    init(doorNew: Door, mileageKmNew: Double, transmitionNew: Transmition, forNumber kolDoor: Double, turbo: Turbo) {
        self.turbo = turbo
        super.init(doorNew: .open, mileageKmNew: mileageKmNew, transmitionNew: .robot, forNumber: kolDoor)
    }

    func bodyCar(chair: Double) -> String {
        return chair <= 5 ? "Легковой авто" : "Автобус"
    }

    func turboOne() {
        turbo = .stageOne
    }

    func turboTwo() {
        turbo = .stageTwo
    }
}

final class InstalTurbo: SportCarVw {
    override func turboOne() {
        super.turboOne()
        print("Установка турбины один")
    }

}

//class SportCarWeels: SportCar {
//    func haveWeelsVw (haveWeelsVw: Bool) {
//            haveWeelsVw ? print(" Колеса есть, можно ехать ") : print(" Колес нет, движение запрещено ")
//        }
//}

var vw = SportCarVw(doorNew: .close, mileageKmNew: 99, transmitionNew: .auto, forNumber: 5, turbo: .stageTwo)
var bmwNew = SportCar(doorNew: .close, mileageKmNew: 0, transmitionNew: .auto, forNumber: 10)
var mersedesNew = SportCar(doorNew: .close, mileageKmNew: 500, transmitionNew: .auto, forNumber: 14)
var audi = SportCar(chair: 10)

SportCar.weels ? print("Car have weels and we go home") : print("Car dont have weels and we dont go home")
SportCar.weels = false
SportCar.weels ? print("Car have weels and we go home") : print("Car dont have weels and we dont go home")

print(vw.bodyCar(chair: vw.numberDoor))

bmwNew.numberDoorInCar()
print("bmw = \(bmwNew.mileageKmNew) mersedes = \(mersedesNew.mileageKmNew)")

mersedesNew = bmwNew
print("bmw = \(bmwNew.mileageKmNew) mersedes = \(mersedesNew.mileageKmNew)")

bmwNew.mileageKmNew = 150
print("bmw = \(bmwNew.mileageKmNew) mersedes = \(mersedesNew.mileageKmNew)")

print(SportCar.carCount)
SportCar.carInfoCount()

var porshe = InstalTurbo(doorNew: .open, mileageKmNew: 20, transmitionNew: .auto, forNumber: 7, turbo: .stageThree)
print(porshe.turbo)
porshe.turboOne()
print(porshe.turbo)

