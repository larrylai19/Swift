//
//  ContentView.swift
//  HelloText
//
//  Created by Larry - 1024 on 2021/10/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("jobs")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(
                Text("Stay Hungry,\nStay Foolish")
                    .fontWeight(.heavy)
                    .lineSpacing(20)
                    .font(.system(size: 32))
                    .foregroundColor(.white)
                    .frame(width: 350, height: 150, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(30)
                    .opacity(0.8)
                ,
                alignment: .bottom
            )
//        Image("mobiledev-tw")
//            .resizable()
//            .aspectRatio(contentMode: .fit)
//            .frame(width: 200, height: 200, alignment: .center)
//            .background(Color.yellow)
//            .clipShape(Circle())
//            .opacity(0.8)
//            .overlay(
//                Image(systemName: "heart.fill")
//                    .font(.system(size: 100))
//                    .foregroundColor(.pink)
//                    .opacity(0.6)
//                    .frame(width: 160, height: 160, alignment: .top)
//            )
//            .overlay(
//                Text("行動開發學院")
//                    .fontWeight(.bold)
//                    .frame(width: 170, height: 170, alignment: .bottom)
//                    .foregroundColor(.purple)
//            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
