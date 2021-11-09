//
//  CardView.swift
//  HelloScroll
//
//  Created by Larry - 1024 on 2021/11/9.
//

import SwiftUI

struct CardView: View {
    
    var image = ""
    var courseNameUS = ""
    var courseNameTW = ""
    var courseHours = ""
    
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
                Text(courseHours)
                    .font(.caption)
                    .foregroundColor(.purple)
            }
            .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 15)
            .padding(.bottom, 10)
        }
        .background(Color(red: 255/255, green: 204/255, blue: 153/255))
        .cornerRadius(20)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(Color.gray, lineWidth: 2)
        )
        .padding(.all, 10)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(image: "ai", courseNameUS: "Intro to AI", courseNameTW: "人工智慧導論", courseHours: "12hr")
    }
}
