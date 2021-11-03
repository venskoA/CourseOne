import UIKit

enum ErrorAnswer: Error {
    case errorOne
    case errorTwo
}


class EnenterPin {

    let pinNumbersPersen = [4444: "Andrey", 1111: "Pety", 8888: "Jeny"]
    let pinWordsPersen = ["IoD": "Andrey", "FFFF": "Pety", "KoooL": "Jeny"]

    func pinNumberSravnenN(numbers: Int) throws -> String? {
        guard let index = pinNumbersPersen[numbers] else {
            throw ErrorAnswer.errorOne
        }
        return pinNumbersPersen[numbers]
    }

    func pinNumberSravnenW(numbers: String) throws -> String? {
        guard (pinWordsPersen[numbers] != nil) else {
            throw ErrorAnswer.errorTwo
        }
        return pinWordsPersen[numbers]
    }
}

let enterNumbers = EnenterPin()

do {
    try enterNumbers.pinNumberSravnenN(numbers: 738467836)
} catch ErrorAnswer.errorOne {
    print("Ошибка Первая")
} catch ErrorAnswer.errorTwo {
    print("Ошибка Вторая")
}

do {
    try enterNumbers.pinNumberSravnenW(numbers: "kjdnjgkd")
} catch ErrorAnswer.errorOne {
    print("Ошибка Первая")
} catch ErrorAnswer.errorTwo {
    print("Ошибка Вторая")
}




