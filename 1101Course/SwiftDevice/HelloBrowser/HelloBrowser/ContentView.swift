//
//  ContentView.swift
//  HelloBrowser
//
//  Created by Larry - 1024 on 2021/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedSegment = 0
    @State private var websites = ["mobiledev.tw", "developer.apple.com"]
    
    var body: some View {
        VStack {
            Picker(selection: $selectedSegment, label: Text("網頁選擇"), content: {
                ForEach(0..<websites.count, id: \.self) {
                    Text(self.websites[$0]).tag($0)
                }
            }).pickerStyle(SegmentedPickerStyle())
            
            WebView(request: URLRequest(url: URL(string: "https://\(websites[selectedSegment])")!))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
