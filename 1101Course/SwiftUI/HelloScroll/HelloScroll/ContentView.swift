//
//  ContentView.swift
//  HelloScroll
//
//  Created by Larry - 1024 on 2021/11/9.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Mobile Development Academy")
                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
                .padding(.all, 10)
                .foregroundColor(.secondary)
            Text("行動開發學院培訓課程")
                .font(.title)
                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
            ScrollView(.horizontal) {
                HStack {
                    CardView(image: "ai", courseNameUS: "Intro to AI", courseNameTW: "人工智慧導論", courseHours: "12hr")
                        .frame(width: 300, height: 300)
                    CardView(image: "python", courseNameUS: "Intro to Python", courseNameTW: "Python語言", courseHours: "24hr")
                        .frame(width: 300, height: 300)
                    CardView(image: "azure", courseNameUS: "Intro to Azure", courseNameTW: "Azure導論", courseHours: "18hr")
                        .frame(width: 300, height: 300)
                    CardView(image: "data-science", courseNameUS: "Intro to DS", courseNameTW: "資料科學導論", courseHours: "12hr")
                        .frame(width: 300, height: 300)
                    CardView(image: "aws", courseNameUS: "Intro to AWS", courseNameTW: "AWS導論", courseHours: "18hr")
                        .frame(width: 300, height: 300)
                }
            }
        }
        
        /*
        ScrollView {
            VStack {
                Text("Mobile Development Academy")
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 10)
                    .foregroundColor(.secondary)
                Text("行動開發學院培訓課程")
                    .font(.title)
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
                    .padding(.leading, 10)
                CardView(image: "ai", courseNameUS: "Intro to AI", courseNameTW: "人工智慧導論", courseHours: "12hr")
                CardView(image: "python", courseNameUS: "Intro to Python", courseNameTW: "Python語言", courseHours: "24hr")
                CardView(image: "azure", courseNameUS: "Intro to Azure", courseNameTW: "Azure導論", courseHours: "18hr")
                CardView(image: "data-science", courseNameUS: "Intro to DS", courseNameTW: "資料科學導論", courseHours: "12hr")
                CardView(image: "aws", courseNameUS: "Intro to AWS", courseNameTW: "AWS導論", courseHours: "18hr")
            }
        }
        */
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
