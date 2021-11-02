//import UIKit

//protocol OneProtocol {
//    var oneVariable: String { get }
//}
//
//protocol TwoProtocol: OneProtocol {
//    var twoVeriable: String { get set }
//}
//
//protocol ThreeProtocol: TwoProtocol {
//    static var threeVariable: String { get }
//}
//
//struct OneStruct: OneProtocol {
//    var oneVariable: String
//}
//
//class OneClass: OneProtocol {
//    let oneVariable: String
//    init (oneVariable: String){
//        self.oneVariable = oneVariable
//    }
//}
//
//final class TwoClass: OneClass {
//    static var constantOne: String = "Static class"
//}
//
//func printMy(printH: String) {
//    print(printH)
//}
//
//let variable = OneStruct(oneVariable: "jd gkjjk jkjdlf")
//let printHelp = TwoClass(oneVariable: "jojkjo top")
//
//class TwoProtocolString: ThreeProtocol {
//    var oneVariable: String
//    var twoVeriable: String
//    static var threeVariable: String = "Three protocole static"
//    init(one: String, two: String) {
//        self.oneVariable = one
//        self.twoVeriable = two
//    }
//}
//
//let twoProtocolString = TwoProtocolString(one: "111111111", two: "2222222222")
//print(twoProtocolString.oneVariable, twoProtocolString.twoVeriable, TwoProtocolString.threeVariable)
//
//let carOne = OneClass(oneVariable: "bmw")
//let carTwo = OneClass(oneVariable: "tesla")
//
////enum OneEnum: OneProtocol {
////    case oneVariable
////}
//
//let arrayOne: [Any] = ["j shj dsjk", "s jkhfsd", 7777, "jkfshiwe kns", 3634782368947]
//
//var arrayProtocol: [OneProtocol] = [carOne, carTwo]
//
//for namber in arrayProtocol {
//    print(namber.oneVariable)
//}
//
//protocol ComplectachiaCarProtocol {
//    var arrayComplectachiaCar: [String] {get set}
//    var newValue: String? {get}
//    func kolValueInArray() -> Int
//    mutating func setNewValueInArray(newValue: String)
//}
//
//struct ProcessingProtocol: ComplectachiaCarProtocol {
//    var arrayComplectachiaCar: [String] = ["Кондиционер", "Подогрев сидений", "Круизконтроль"]
//    var newValue: String? = nil
//
//    func kolValueInArray() -> Int {
//        return arrayComplectachiaCar.count
//    }
//
//    mutating func setNewValueInArray(newValue: String) {
//        self.newValue = newValue
//        arrayComplectachiaCar.append(newValue)
//    }
//}
//
//
//var Tank = ProcessingProtocol()
//
//print(Tank.arrayComplectachiaCar)
//Tank.setNewValueInArray(newValue: "Print")
//print(Tank.arrayComplectachiaCar)
//
//
////-----------------------------
//
//protocol NameInitProtocol {
//    init(name: String)
//}
//
//class InitClass: NameInitProtocol {
//    var name: String
//    required init(name: String) {
//        self.name = name
//    }
//}
//
//let nameOne = InitClass(name: "mklsclmds")
//print(nameOne.name)
//
//extension Double {
//    var asKM: Double { return self / 1000.0 }
//    var asM: Double { return self }
//    var asCM: Double { return self * 100.0 }
//    var asMM: Double { return self * 1000.0 }
//}
//
//var hhhhhhhhh: Double = 50
//print(hhhhhhhhh.asKM)
//
//
//extension Double {
//    var perim: Double{
//        get {
//            return self * 10
//        } set(newValue) {
//            self = newValue / 10
//        }
//    }
//}
//
//hhhhhhhhh.perim
//hhhhhhhhh.perim = 30
//print()
//
//
//
//struct Line {
//    var pointOne: (Double, Double)
//    var pointTwo: (Double, Double)
//}
//extension Double {
//    init(line: Line) {
//        self = sqrt(
//            pow((line.pointTwo.0 - line.pointOne.0), 2) +
//            pow((line.pointTwo.1 - line.pointOne.1), 2)
//        )
//} }
//var myLine = Line(pointOne: (10,10), pointTwo: (14,10))
//var lineLength = Double(line: myLine) // 4
//
//
//protocol AsTextProtocol {
//    func asText() -> Int
//}
//
//extension Int: AsTextProtocol {
//    func asText() -> Int {
//        return (self * 10)
//    }
//}
//
//var newText: Int = 10
//newText.asText()
//
//
//protocol DefoultStringProtocol {
//    var newValue: Int { get }
//    func addNewString() -> String
//}
//
//extension DefoultStringProtocol {
//    func addNewString() -> String {
//        return "Строка по умолчанию"
//    }
//}
//
//extension DefoultStringProtocol {
//    func newValueInt() -> Double {
//        return Double(newValue) / 188
//    }
//}
//
//class DefoultStringProtocolClass: DefoultStringProtocol {
//    var newValue: Int
//    func addNewString() -> String {
//        return "Новая строка"
//    }
//
//    init (newV: Int) {
//        self.newValue = newV
//    }
//
//}
//
//var ttttt = DefoultStringProtocolClass(newV: 8888)
//print(ttttt.newValueInt())
//
////-----------------------------------------------------
//
//protocol SuperProtocol: class {
//
//}
//
//class SuperProtocolClass: SuperProtocol {
//
//}
//
////----------------------------------------------------
//
//protocol NameProtocol {
//    var name: String { get }
//}
//
//protocol AgeProtocol {
//    var age: Int { get }
//}
//
//struct NameAgeEnter: NameProtocol, AgeProtocol {
//    var name: String
//    var age: Int
//}
//
//func printNameAge(birsday: NameProtocol & AgeProtocol) {
//    print("С днем рождения \(birsday.name). Тебе уже \(birsday.age)")
//}
//
//var birsday = NameAgeEnter(name: "Andrey", age: 35)
//printNameAge(birsday: birsday)
//
//
//print("------------------------------------------")
//
//// MARC: - lesson 6
//
//
//let name = "egor"
//let age = 10
//
//switch name {
//case "egor" where age < 10:
//    print("1")
//case "slaca" where age < 20:
//    print("1")
//default:
//    break
//}

//
//struct Animal {
//    let name: String
//}
//
//
//struct Wolf {
//    let name: String
//}
//
//
//struct Dog {
//    let name: String
//}
//
//
//let animalOne = Animal(name: "Slon")
//let animalTwo = Animal(name: "Tigr")
//let animalThree = Animal(name: "Nosorog")
//
//let wolfOne = Wolf(name: "Stepan")
//let wolfTwo = Wolf(name: "Genadi")
//
//let dog = Dog(name: "Sharic")
//
//var array: [Any] = [animalOne,
//                    animalTwo,
//                    animalThree,
//                    wolfOne,
//                    wolfTwo,
//                    dog]
//
//var countAnimal = 0
//var countWolf = 0
//var countDog = 0
//
//for index in array {
//    if index is Animal {
//        countAnimal += 1
//    } else if index is Wolf {
//        countWolf += 1
//    } else if index is Dog {
//        countDog += 1
//    }
//}
//
//for index in array {
//    if let animal = index as? Animal {
//        print(animal.name)
//    }
//
//}
//
//print(countAnimal, countWolf, countDog)



// Дженерики

//let arrayString = ["Vasy", "Pety"]
//let arrayAge = [38, 55]
//let arraySellary = [10000, 30000]
//
//func printStringArray(name: [String]) {
//    for index in name {
//        print(index)
//    }
//}
//
//func printIntArray(name: [Int]) {
//    for index in name {
//        print(index)
//    }
//}
//
//func printSallaryIntArray(name: [Int]) {
//    for index in name {
//        print(index)
//    }
//}
//
//printStringArray(name: arrayString)
//printIntArray(name: arrayAge)
//printSallaryIntArray(name: arraySellary)
//
////    Хорошая дженерика
//
//func genericAll<T>(name: [T]) {
//    for index in name {
//        print(index)
//    }
//}
//
//genericAll(name: arrayString)
//genericAll(name: arrayAge)
//genericAll(name: arraySellary)
//
//
//// структуры нв дженериках
//
//var emptuArray = [String]()
//
//struct GenericArray<T> {
//    var item = [T]()
//
//}
//
//var first = "j  g  hhuihikj jkhj"
//var second = "gjh gj jgjjguu uh ih iio"
//func change<T> (a: T, b: T) {
//    let tmp = first
//    first = second
//    second = tmp }
//
//change(a: first, b: second)
//
//first // 5
//second // 3
//
//func value<Tone, Ttwo> (a: Tone, b: Ttwo) {
//    print("Tone = \(a), Ttwo = \(b)")
//}
//
//value(a: 87878, b: "dhfkjg hdkjfk")
//value(a: "hjhj jhjk", b: 9887)
//
//
//func summaOne<T: Numeric> (a: T, b: T) {
//    print(a + b)
//}
//
//summaOne(a: 789787, b: 26356.889978)
//summaTwo(a: 635, b: 676767.34090239928)
//
//func summaTwo<T> (a: T, b: T) where T: Numeric {
//    print(a + b)
//}
//
//summaTwo(a: 8989.9999, b: 878236)
//summaTwo(a: 87812.566627, b: 123298.87832)
//
//// Subscript
//
//struct itSector {
//    let name: [String]
//
//    subscript(index: Int) -> String {
//            return name[index]
//    }
//}
//
//let name = itSector(name: ["Ivan", "Pety", "Victor"])
//
//print(name[0])
//print(name.name[0])


enum EnumError: Error {
    case errorOne
    case errorTwo
    case errorThree
}

struct InputData {
    var price: Int
    var numder: Int
}

class Mashine {

    var product = ["Chips": InputData(price: 10, numder: 13),
                   "Cola": InputData(price: 12, numder: 25),
                   "Burger": InputData(price: 9, numder: 19)]

    var bank = 0

    func obrabotcaError(name: String) throws {
        guard var index = product[name] else {
            throw EnumError.errorOne
        }

        guard index.numder > 0 else {
            throw EnumError.errorTwo
        }

        guard bank >= index.price else {
            throw EnumError.errorThree
        }

        index.numder -= 1

        print("Продук \(name) выдается")
    }
}

let firstNumber = Mashine()
firstNumber.bank = 150

do {
    try firstNumber.obrabotcaError(name: "Coddsdsla")
} catch {
    print("error \(EnumError.errorTwo)")
}




