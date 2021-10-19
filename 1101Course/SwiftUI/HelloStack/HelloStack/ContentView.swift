//
//  ContentView.swift
//  HelloStack
//
//  Created by Larry - 1024 on 2021/10/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TitleView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 2, content: {
            Text("Ryan 的")
                .font(.system(size: 30))
            Text("冰箱")
                .font(.title)
                .foregroundColor(Color(red: 29/255, green: 40/255, blue: 192/255))
        })
    }
}
