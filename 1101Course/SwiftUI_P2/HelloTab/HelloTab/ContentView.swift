//
//  ContentView.swift
//  HelloTab
//
//  Created by Larry - 1024 on 2021/11/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("行動開發學院")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(.primary)
            TabView {
                WelcomeView()
                    .tabItem {
                        Image(systemName: "rosette")
                        Text("Welcome")
                    }
                Text("第二頁")
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Courses")
                    }
                Text("第三頁")
                    .tabItem {
                        Image(systemName: "book")
                        Text("Learn")
                    }
                SettingView()
                    .tabItem {
                        Image(systemName: "wrench")
                        Text("Setting")
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
