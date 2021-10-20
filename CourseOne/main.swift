//
//  main.swift
//  CourseOne
//
//  Created by Andrey Vensko on 15.10.21.
//

import Foundation


// Guard

//let name: String? = "Artem"
//
//func getName(name: String?) -> String {
//
//    guard let name = name else { return " 111  " }
//
//}
//
//print(getName(name: "HHHH"))
//
//enum SomeEnum {}
//
//enum CompassPoint {
//    case north
//    case south
//    case east
//    case west
//}
//
//let direction = SomeEnum.north
//
//func choseDirection (the side: CompassPoint) {
//    switch side {
//    case .east:
//        print("1")
//    default:
//        break
//    }
//}
//
//choseDirection(the: .east)
//
//let fio = [
//    ("Иванов", "Иван", "Иванович"),
//    ("Петров", "Петр", "Петрович"),
//    ("Сидоров", "Сидор", "Сидорович"),
//    ("Александров", "Александр", "Александрович")
//]
//
//func printFio(_ fio: [(String, String, String)], mode: Int) {
//    for i in fio {
//        switch mode {
//        case 1:
//            print(i.0, i.1, i.2)
//        case 2:
//            print(i.0, i.1)
//        case 3:
//            print(i.0)
//        default:
//            fatalError("Поддерживается только два режим")
//        }
//    }
//}
//printFio(fio, mode: 3)
//
//enum PrintMode {
//    case one
//    case two
//    case three
//    case fore
//}
//
//func printFunc (mode: PrintMode) {
//
//    switch mode{
//    case .one:
//        print("Enter 1")
//    case .two:
//        print("Enter 2")
//    case .three:
//        print("Enter 3")
//    case .fore:
//        print("Enter 4")
//    }
//}
//
//printFunc(mode: PrintMode.two)

//enum PrintNumber: Int {
//    case one = 1
//    case two = 2
//    case three = 3
//    case fore = 4
//    case five = 5
//}
//
//let x = PrintNumber.two
//let y = PrintNumber.three
//
//print(x.rawValue + y.rawValue)


//enum KvadratnYravn {
//    case two (one: Double, two: Double)
//    case one (one: Double)
//    case zero (error: String)
//}
//
//func rechenieKvadratnYravneniy (a: Double, b: Double, c: Double) -> KvadratnYravn {
//
//    let diskrim = b * b - 4 * a * c
//    if diskrim > 0 {
//        let x1 = (-b - sqrt(diskrim)) / (2 * a)
//        let x2 = (-b + sqrt(diskrim)) / (2 * a)
//        return .two(one: x1, two: x2)
//    } else if diskrim == 0 {
//        let x1 = -b / (2 * a)
//        return .one(one: x1)
//    } else {
//        return .zero(error: "Diskim = 0")
//    }
//}
//
//print(rechenieKvadratnYravneniy(a: 10, b: 2, c: 10))

//enum CurrencyUnit {
//    case rouble
//    case euro
//}
//
//var x = CurrencyUnit.euro
//let x1: CurrencyUnit = .rouble
//x = .rouble
//
//
//
//enum AdvancetCurrencyUnit {
//    enum DollarsCountries {
//        case usa
//        case canada
//        case australia
//    }
//    case rouble(counries: [String], shortName: String)
//    case euro(counries: [String], shortName: String, kol: Int)
//    case dollar(countries: DollarsCountries, shortName: String)
//}
//
//let x3 = AdvancetCurrencyUnit.rouble(counries: ["Belarys", "Russia"], shortName: "RUB")
//let x4 = AdvancetCurrencyUnit.euro(counries: ["Germani", "Ispania", "Portygalia"], shortName: "EUR", kol: 10)
//let x5 = 8
//
//switch x5 > 88{
//case true:
//    print(AdvancetCurrencyUnit.dollar(countries: .usa, shortName: "USD"))
//case false:
//    print(AdvancetCurrencyUnit.dollar(countries: .australia, shortName: "AUS"))
//default:
//    print("error")
//}
//
//let x6 = AdvancetCurrencyUnit.DollarsCountries.australia


// структуры

//enCa


struct CalculTwo {
    var radius: Double {
        willSet (newRadius) {
            print("(willSet)  Значение \(radius) будет изменено нв \(newRadius)")
        }
        didSet (oldRadius) {
            print("(didSet) Значение \(oldRadius) будет изменено на \(radius)")
        }
    }
    var diametr: Double{
        get{
            return radius * 2
        }
        set {
            print("OOOOOOO")
            radius = newValue / 10
        }
    }
}

var x2 = CalculTwo (radius: 20)

print(x2.radius)

x2.radius = 30
x2.diametr = 350
