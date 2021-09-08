//
//  ContentView.swift
//  HelloTabView
//
//  Created by Larry - 1024 on 2021/9/8.
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
                CourseListView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Courses")
                    }
                Text("第三頁")
                    .tabItem {
                        Image(systemName: "book")
                        Text("Learn")
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
