//
//  ContentView.swift
//  HelloText
//
//  Created by Larry - 1024 on 2021/9/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, 1083316")
            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
