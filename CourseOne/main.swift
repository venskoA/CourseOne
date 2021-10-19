// Второе домашнее задание

import Foundation

let x: Int = Int.random(in: 1...150)
print("x = ", x)
let y: Int = Int.random(in: 1...150)
print("y = ", y)
let z: Int = Int.random(in: 1...150)
print("z = ", z)


// 1. Написать функцию, которая определяет, четное число или нет

func detectParity (number: Int) -> String {
    let parity: String
    if (number % 2) == 0 && number != 0 {
        parity = "Число четное"
    } else {
        parity = "Число нечетное"
    }
    return parity
}

print("x =", detectParity(number: x))
print("y =", detectParity(number: y))
print("z =", detectParity(number: z))

// 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func segmentationThree (number: Int) -> String {
    let parity: String
    if (number % 3) == 0 && number != 0 {
        parity = "делится без остатка на 3"
    } else {
        parity = "не делится без остатка на 3"
    }
    return parity
}

print("x", segmentationThree(number: x))
print("y", segmentationThree(number: y))
print("z", segmentationThree(number: z))

// 3. Создать возрастающий массив из 100 чисел.

var newArray = [Int]()

for i in 1...100{
    newArray.append(i)
}

// 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

newArray = newArray.filter{$0 % 2 == 0 && $0 % 3 == 0}

print(newArray)

//5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

func addFibon (colFib: Int) -> [Int] {
    var x = 0
    var y = 1
    var z: Int
    var arrayFibon = [0, 1]

    for _ in 0...(colFib - 2) {
        z = x + y
        arrayFibon.append(z)
        x = y
        y = z
    }
    return arrayFibon
}

newArray += addFibon(colFib: 50)

print(newArray)

//6. Заполнить массив из 100 элементов различными простыми числами. Натуральное число, большее единицы, называется простым, если оно делится только на себя и на единицу. Для нахождения всех простых чисел не больше заданного числа n, следуя методу Эратосфена, нужно выполнить следующие шаги

func addProstNamber (namber: Int) -> [Int] {

    var arrayNamber = [2, 3, 5, 7, 11, 17]
    for i in 2...namber {
        if (i % 2 != 0) && (i % 3 != 0) && (i % 5 != 0) && (i % 7 != 0) && (i % 11 != 0) && (i % 17 != 0){
            arrayNamber.append(i)
        }
        if arrayNamber.count == 100 {
            break
        }
    }
    return arrayNamber
}

print(addProstNamber(namber: 100000))
