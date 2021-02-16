//
//  ContentView.swift
//  ios-TemperatureConverter
//
//  Created by Yining Wang on 2021-02-15.
//

import SwiftUI

import SwiftUI

struct ContentView: View {
    @State private var fromUnit: TemperatureUnit = TemperatureUnit.kelvin
    @State private var input:String = "10"
    @State private var toUnit: TemperatureUnit = TemperatureUnit.kelvin
        
    var body: some View {
        NavigationView{
            Form{
                Section(header:Text("Converting From?")){
                    Picker("To Unit", selection: $fromUnit){
                        Text(TemperatureUnit.celcius.rawValue).tag(TemperatureUnit.celcius)
                        Text(TemperatureUnit.kelvin.rawValue).tag(TemperatureUnit.kelvin)
                        Text(TemperatureUnit.fahrenheit.rawValue).tag(TemperatureUnit.fahrenheit)
                        
                    }
                    .pickerStyle(SegmentedPickerStyle())

                }

                Section(header:Text("Value to Convert? ")){
                    TextField("", text: $input)
                        .keyboardType(.numberPad)
                }
                Section(header:Text("Converting To? ")){
                    Picker("To Unit", selection: $toUnit){
                        Text(TemperatureUnit.celcius.rawValue).tag(TemperatureUnit.celcius)
                        Text(TemperatureUnit.kelvin.rawValue).tag(TemperatureUnit.kelvin)
                        Text(TemperatureUnit.fahrenheit.rawValue).tag(TemperatureUnit.fahrenheit)
                        
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }

                Section(header:Text("Result is: ")){
                    Text("\(convert(input: input, toUnit: toUnit, fromUnit: fromUnit))")
                }
            }
            .navigationBarTitle("Temperature Converter")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
