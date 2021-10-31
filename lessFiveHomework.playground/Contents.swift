import UIKit
import CoreGraphics

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся         для спортивного автомобиля и цистерны.
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//5. Создать несколько объектов каждого класса. Применить к ним различные действия.
//6. Вывести сами объекты в консоль.

enum Door {
    case open
    case close
}

enum Transmition {
    case autoClasic
    case manual
    case robot
}

enum HaveTurbo {
    case haveTurbo
    case dontHaveTurbo
}

enum TurboStage {
    case stageOne
    case stageTwo
    case stageThree
}

enum Engin {
    case work
    case dontWork
}

enum HeadLight {
    case galogen
    case csenon
    case led
    case facel
}

enum CarKey {
    case have
    case dontHave
}

protocol CarDoorProtocol {
    func actionDoor(name: CarKey) -> Door
}

protocol CarEngineProtocol {
    func actionEngine(door: Door, key: CarKey) -> Engin
}

protocol CarHeadLightProtocol {
    var headLight: HeadLight { get }
    func actionHeadLight(engine: Engin) -> String
}

protocol CarCruisControlProtocol {
    var cruisControl: Bool { get set }
}

protocol CarProtocol: CarDoorProtocol,
                      CarEngineProtocol,
                      CarHeadLightProtocol,
                      CarCruisControlProtocol {
    var odometrKm: Double { get }
    var numberUser: Int { get }
    var numberDoor: Int { get }
    var namePeopleInCar: [String] { get }
}

extension CarProtocol {

    func actionDoor(name: CarKey) -> Door {
        return (name == .have) ? .open : .close
    }

    func actionEngine(door: Door, key: CarKey) -> Engin {
        if door == .close || key == .have {
            return .work
        } else if door == .open || key == .have  {
            return .dontWork
        } else if door == .close || key == .dontHave {
            return .dontWork
        } else {
            return .dontWork
        }
    }
}

final class TruncCar: CarProtocol {

    let odometrKm: Double
    let numberUser: Int
    let numberDoor: Int
    let namePeopleInCar: [String]
    var cruisControl: Bool
    let headLight: HeadLight

    func actionHeadLight(engine: Engin) -> String {
        switch engine {
        case .work: return "Двигатель запущен. Можно включать фары"
        case .dontWork: return "Двигатель не запущен. Фары запускать нельзя"
        }
    }

    init(odometrKm: Double,
         numberUser: Int,
         numberDoor: Int,
         namePeopleInCar: [String],
         cruisControl: Bool,
         headLight: HeadLight) {
        self.odometrKm = odometrKm
        self.numberUser = numberUser
        self.numberDoor = numberDoor
        self.namePeopleInCar = namePeopleInCar
        self.cruisControl = cruisControl
        self.headLight = headLight
    }
}

var bmw = TruncCar(odometrKm: 15088.00,
                   numberUser: 9,
                   numberDoor: 3,
                   namePeopleInCar: ["Pety", "Vasy", "Jeny"],
                   cruisControl: true,
                   headLight: .led)

print("На авто стоят фары ", bmw.headLight)
print("У машины было \(bmw.numberUser) владельцев")

if bmw.actionEngine(door: .close, key: .have) == .work {
    print("Дверь закрыта. Ключ на месте. ПОЕХАЛИИИИИИ!!!")
}
