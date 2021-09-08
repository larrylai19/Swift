//
//  ContentView.swift
//  HelloScroll
//
//  Created by Larry - 1024 on 2021/9/8.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Mobile Development Academy")
                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 15)
                .foregroundColor(.secondary)
            Text("行動開發學院培訓課程")
                .font(.title)
                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            ScrollView {
                VStack {
                    CardView(image: "ai",
                             courseNameUS: "Intro to AI",
                             courseNameTW: "人工智慧導論",
                             courseHours: "12hr")
                    CardView(image: "python",
                             courseNameUS: "Intro to Python",
                             courseNameTW: "Python程式語言",
                             courseHours: "24hr")
                    CardView(image: "azure",
                             courseNameUS: "Intro to Azure",
                             courseNameTW: "Azure操作入門",
                             courseHours: "18hr")
                    CardView(image: "data-science",
                             courseNameUS: "Intro to Data Science",
                             courseNameTW: "資料科學導論",
                             courseHours: "12hr")
                    CardView(image: "aws",
                             courseNameUS: "Intro to AWS",
                             courseNameTW: "AWS操作入門",
                             courseHours: "18hr")
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
