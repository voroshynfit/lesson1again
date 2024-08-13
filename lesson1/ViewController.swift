//
//  ViewController.swift
//  lesson1
//
//  Created by sebastian on 12.08.24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
         Выведи в консоль минимальные и максимальные значения базовых типов.
         */
        
      
        print("IntMin", Int64.min)
        print("IntMax", Int64.max)
        print("FloatMin", Float.leastNormalMagnitude)
        print("FloatMax", Float.greatestFiniteMagnitude)
        print("DoubleMin", Double.leastNormalMagnitude)
        print("DoubleMax", Double.greatestFiniteMagnitude)
        
        
        /*
         Создай две переменные. Первая дробного типа хранит в себе расстояние в метрах. Вторая целочисленная хранит в себе время в секундах. Найди скорость в километрах в час.
         */
        
        let distance: Float = 48000 /*метры*/
        let time: Int = 3600 /*секунды*/
        var speedMS: Float
        var speedKmH: Float
        
        speedMS = distance / Float(time)
        speedKmH = speedMS / 1000 * 3600
        print("скорость в км/ч : ", speedKmH)
        
        /*
         Создай три Int переменных. Сложи цифры этих трех переменных и получи Int число. Выведи его. (пример: 111, 222, 333. результат число: 111222333)
         */
        
        let one: Int = 111
        let two: Int = 222
        let three: Int = 333
        
        print(Int((String(one) + String(two) + String(three))))
        
        /*
         Создай две целочисленных переменных. Сделай цикл в диапазоне их значений. Значение каждой итерации цикла распечатай в консоль. Добавь еще одну переменную, которая будет считать сумму всех цифр входящих в этот диапазон. Также если текущее число кратно 5, то информируй об этом через вывод в консоль.
         
         */
        
        let number1: Int = 1
        let number2: Int = 30
        var sum: Int = 0
        
        for item in number1...number2 {
            print(item)
            if item.isMultiple(of: 5) {
                print("   ", item, "кратно пяти")
            }
            sum += item
        }
        print("Сумма всех чисел: ", sum)
        
        /*
         Создай 3 константы с типами Int, Float и Double. Создай другие 3 константы, тех же типов: Int, Float и Double, при чем каждая из них это сумма первых трех, но со своим типом.
         
         */
        
        let numberOne: Int = 10
        let numberTwo: Float = 10
        let numberThree: Double = 10
        var sumInt: Int
        var sumFloat: Float
        var sumDouble: Double
        
        sumInt = numberOne + Int(numberTwo) + Int(numberThree)
        sumFloat = Float(numberOne) + numberTwo + Float(numberThree)
        sumDouble = Double(numberOne) + Double(numberTwo) + numberThree
        print(sumInt, sumFloat, sumDouble)
        
        /*
         Даны 5 строк:
         let number1 = "5"
         let number2 = "2abc"
         let number3 = "3"
         let number4 = "cx12"
         let number5 = "1"
         Найди сумму цифр в этих строках.
         */
        
        let number11 = "5"
        let number22 = "2abc"
        let number33 = "3"
        let number44 = "cx12"
        let number55 = "1"
        
        let temp1 = Int(number11) ?? 0
        let temp3 = Int(number33) ?? 0
        let temp5 = Int(number55) ?? 0
        let temp2 = Int(number22.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) ?? 0
        let temp4 = Int(number44.components(separatedBy: CharacterSet.decimalDigits.inverted).joined()) ?? 0
        
        print(temp1 + temp2 + temp3 + temp4 + temp5)
    }
}
