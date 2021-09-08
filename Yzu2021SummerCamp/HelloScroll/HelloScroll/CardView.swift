//
//  CardView.swift
//  HelloScroll
//
//  Created by Larry - 1024 on 2021/9/8.
//

import SwiftUI

struct CardView: View {
    
    var image: String
    var courseNameUS: String
    var courseNameTW: String
    var courseHours: String
    
    var body: some View {
        VStack {
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                Text(courseNameUS)
                    .font(.headline)
                    .foregroundColor(.secondary)
                Text(courseNameTW)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .lineLimit(3)
                Text(courseHours)
                    .font(.caption)
                    .foregroundColor(.purple)
            }
            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 15)
            .padding(.bottom, 10)
        }
        .background(Color(red: 255 / 255, green: 204 / 255, blue: 153 / 255))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 4)
        )
        .padding(.all, 10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            VStack {
                Text("Mobile Development Academy")
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 10)
                    .foregroundColor(.secondary)
                Text("行動開發學院培訓課程")
                    .font(.title)
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
                    .padding(.all, 10)
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
