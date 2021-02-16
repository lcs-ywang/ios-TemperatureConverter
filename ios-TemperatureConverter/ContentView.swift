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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
