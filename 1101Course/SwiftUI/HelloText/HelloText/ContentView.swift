//
//  ContentView.swift
//  HelloText
//
//  Created by Larry - 1024 on 2021/10/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .fontWeight(.bold)
            .font(.title)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
