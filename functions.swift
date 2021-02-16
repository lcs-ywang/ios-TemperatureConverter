//
//  Funtion.swift
//  Temperature Convertor
//
//  Created by Yining Wang on 2021-02-03.
//

import Foundation

func convert(input:String, toUnit:TemperatureUnit, fromUnit:TemperatureUnit) -> Double {
    guard let input = Double(input) else{
        return 0.0
    }
    
    var celcius_form:Double = 0.0
    
    switch fromUnit{
    case .celcius:
        celcius_form = input

    case .kelvin:
        celcius_form = kelvin_to_celcius(kelvin: input)
    
    case .fahrenheit:
        celcius_form = fahrenheit_to_celcius(fahrenheit: input)

    }
    
    switch toUnit{
    case.celcius:
        return celcius_form
    
    case.kelvin:
        return celcius_to_kelvin(celcius: celcius_form)
    
    case.fahrenheit:
        return celcius_to_fahrenheit(celcius: celcius_form)
    }
}

func kelvin_to_celcius(kelvin:Double) -> Double{
    return kelvin - 273.15
}

func fahrenheit_to_celcius(fahrenheit:Double) -> Double{
    return (fahrenheit - 32) * (5/9)
}

func celcius_to_kelvin(celcius: Double) -> Double{
    return celcius + 273.15
}


func celcius_to_fahrenheit(celcius: Double) -> Double{
    return (celcius * 9/5) + 32
}

func lengthconvertor1(Inch: Double) -> Double {
    return (Inch)/36
}

func lengthconvertor2(Inch: Double) -> Double {
    return (Inch)/12
}

func lengthconvertor3(Foot: Double) -> Double {
    return (Foot)/3
}

func lengthconvertor4(Foot: Double) -> Double {
    return (Foot) * 12
}

func lengthconvertor5(Yard: Double) -> Double {
    return (Yard) * 36
}

func lengthconvertor6(Yard: Double) -> Double {
    return (Yard) * 3
}
