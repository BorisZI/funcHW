//
//  main.swift
//  funcHW
//
//  Created by Boris Zitserman on 14.09.2022.
//

import Foundation

//Написать функцию, которая вычисляет объем цилиндра. Параметрами функции должны быть радиус и высота цилиндра.
//

func cilindrObem(radius: Double, hight: Double) -> Double {
    var res = 0.0
    res = Double.pi * pow(radius, 2) * hight
    return res
}
print(cilindrObem(radius: 2, hight: 3))

//Написать функцию, которая возвращает максимальное из двух целых чисел, полученных в качестве аргумента.
//
func hiestFromNumbers(numOne: Int, numTwo: Int) -> Int {
    if numOne > numTwo {
        return numOne
    } else {
        return numTwo
    }
}
print(hiestFromNumbers(numOne: 3, numTwo: 5))

//Написать функцию, которая сравнивает два целых числа и возвращает результат сравнения в виде одного из знаков: >, < или =.
func whatIsNumOnetoTwo (numOne: Int, numTwo: Int) -> Character {
    var res: Character = "0"
    
    if numOne > numTwo {
        res = ">"
    }
    
    if numOne < numTwo {
        res = "<"
    } else {
        res = "="
    }
    return res
}
print(whatIsNumOnetoTwo(numOne: 5, numTwo: 7))
//
//Написать функцию, которая вычисляет сопротивление цепи, состоящей из двух резисторов. Параметрами функции являются величины сопротивлений и тип соединения (последовательное или параллельное). Функция должна проверять корректность параметров: если неверно указан тип соединения, то функция должна возвращать -1.
func soprotivlenieLan(
    valueSoprRezOneOM: Double,
    valueSoprRezTwoOM: Double,
    isConectType: String) -> Double {
    
        var res = 0.0
    if isConectType == "последовательное" {
        res = valueSoprRezOneOM + valueSoprRezTwoOM
    } else if isConectType == "параллельное" {
        res = 1 / (1 / valueSoprRezOneOM + 1 / valueSoprRezTwoOM)
    } else {
        return -1
    }
    return res
}
print(soprotivlenieLan(valueSoprRezOneOM: 2, valueSoprRezTwoOM: 2, isConectType: "последовательное"))


//Написать функцию Procent, которая возвращает процент от полученного в качестве аргумента числа.
//
func procentOne(number: Double) -> Double {
    number / 100
}
print(procentOne(number: 50))





//Написать функцию Dohod, которая вычисляет доход по вкладу. Исходными данными для функции являются: величина вклада, процентная ставка (годовых) и срок вклада (количество дней).
//
func dohod(valueOfMoney: Double, procentYear: Double, daysInInvest: Int) -> Double {
    var res = 0.0
    res = valueOfMoney * (procentYear / 360 * Double(daysInInvest) / 100)
    return res
}
print(dohod(valueOfMoney: 500, procentYear: 10, daysInInvest: 360))



//Написать функцию, которая выводит на экран строку, состоящую из звездочек. Длина строки (количество звездочек) является параметром функции.
//
func zvezdoxhkaInLane(value: Int) {
//    var res: [Character] = []
    for _ in 0...value {
        print("*", terminator: "")
    }
    print("")
}
zvezdoxhkaInLane(value: 10)


//Написать функцию, которая вычисляет объем и площадь поверхности параллелепипеда.

func plochadObemParalepipet(storanaA: Double, storonaB: Double, storonaC: Double) -> String {
    var resObem = 0.0
    var resPlochad = 0.0
    var resString = ""
    resObem = storanaA * storonaB * storonaC
    resPlochad = 2 * (storanaA * storonaB + storanaA * storonaC + storonaB * storonaC)
    
    resString = ("объем: \(resObem) \nплощадь: \(resPlochad)")
    return resString
}
print(plochadObemParalepipet(storanaA: 2, storonaB: 2, storonaC: 5))
