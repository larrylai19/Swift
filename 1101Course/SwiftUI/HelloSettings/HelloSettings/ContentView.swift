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
