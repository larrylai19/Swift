//
//  ContentView.swift
//  HelloSettings
//
//  Created by Larry - 1024 on 2021/11/9.
//

import SwiftUI

struct ContentView: View {
    
    private var displayFontType = [
        ".default", ".rounded", ".monospaced", ".serif"
    ]
    
    @State var displayFontSelected = 0
    @State var isDeepScheme = false
    @State var colorArray = [255.0, 255.0, 255.0]
    @State var stepperValue = 0
    @State var sliderValue = 0.0
    @State var date = Date()
    @State var color = Color(.sRGB, red: 0.98, green: 0.9, blue: 0.2)
    
    var body: some View {
        NavigationView {
            Form(content: {
                Section(header: Text("字型設定"), content: {
                    Picker(selection: $displayFontSelected,
                           label: Text("字型選擇(\(displayFontSelected))"),
                           content: {
                            ForEach(0..<displayFontType.count,
                                    id: \.self,
                                    content: {
                                        Text(self.displayFontType[$0])
                                    }
                            )
                    })
                })
                Section(header: Text("背景風格")) {
                    Toggle(isOn: $isDeepScheme, label: {
                        Text("深色(\(String(isDeepScheme)))")
                    })
                }
                Section(header: Text("計數器")) {
                    Stepper("Stepper(\(stepperValue))",
                    onIncrement: { stepperValue += 1 },
                    onDecrement: { stepperValue -= 1 })
                }
                Section(header: Text("滑桿(\(sliderValue, specifier: "%.2f"))")) {
                    Slider(value: $sliderValue, in: 0...1)
                }
                Section(header: Text("日期")) {
                    DatePicker(
                            "\(date)",
                            selection: $date,
                            displayedComponents: [.date]
                    )
                }
                Section(header: Text("選擇顏色")) {
                    ColorPicker("Alignment Guides", selection: $color)
                }
            })
            .navigationTitle("Settings 設定")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
