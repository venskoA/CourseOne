import UIKit

struct Book {
    var name: String
    var numberBook: Int
}

extension Book {
    var printBook : String {
        return "Имя: \(name) кол. книг = \(numberBook)"
    }
}


struct arrayBook <T> {
    var numbers: [T] = []

    mutating func enqueue(number: T) {
        numbers.append(number)
    }
    mutating func remove() -> T {
        return numbers.removeLast()
    }

    var examination: Bool {
        return numbers.count == 0
    }

    func printMyArray() {
        print(numbers)
    }
}


var arrayNew = arrayBook<Book>()

arrayNew.enqueue(number: .init(name: "Петя", numberBook: 5))
arrayNew.enqueue(number: .init(name: "Вася", numberBook: 7))
arrayNew.enqueue(number: .init(name: "Андрей", numberBook: 10))
arrayNew.enqueue(number: .init(name: "Сергей", numberBook: 12))


arrayNew.printMyArray()
print("Наполнен массив \(arrayNew.examination)")
arrayNew.remove()
arrayNew.printMyArray()

