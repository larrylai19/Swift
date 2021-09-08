//
//  ContentView.swift
//  HelloSettings
//
//  Created by Larry - 1024 on 2021/9/8.
//

import SwiftUI

struct ContentView: View {
    
    private var displayFontType =
        [".default", ".rounded", ".monospaced", ".serif"]
    
    @State var displayFontSelected = 0
    @State var IsDeepScheme = false
    @State var colorArray = [255.0, 255.0, 255.0]
    @State var stepperValue = 0
    @State var sliderValue = 0.0
    @State private var date = Date()
    
    var body: some View {
        NavigationView {
            Form(content: {
                Section(header: Text("字型設定"), content: {
                    Picker(selection: $displayFontSelected,
                           label: Text("字型選擇 (\(displayFontSelected))"),
                           content: {
                            ForEach(0..<displayFontType.count, id: \.self,
                                    content: {
                                        Text(displayFontType[$0])
                                    })
                           })
                })
                Section(header: Text("背景風格"), content: {
                    Toggle(isOn: $IsDeepScheme, label: {
                        Text("深色 (\(String(IsDeepScheme).capitalized))")
                    })
                })
                Section(header: Text("計數器"), content: {
                    Stepper("Stepper (\(stepperValue))",
                            onIncrement: { stepperValue += 1 },
                            onDecrement: { stepperValue -= 1 })
                })
                Section(header: Text("滑桿 (\(sliderValue, specifier: "%.2f"))"), content: {
                    Slider(value: $sliderValue, in: 0...1)
                })
                Section(header: Text("日期"), content: {
                    DatePicker(
                        "Start Date \(date)",
                        selection: $date,
                        displayedComponents: [.date]
                    )
                })
            })
            .navigationBarTitle("Settings 設定")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
