//
//  ContentView.swift
//  HelloUIImage
//
//  Created by Larry - 1024 on 2021/9/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("MobileDevTW-Logo")
            .resizable()
//            .scaledToFit()
            .aspectRatio(contentMode: .fit)
            .frame(width: 200, height: 200, alignment: .center)
            .background(Color.yellow)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .opacity(0.8)
            .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: 100))
                    .foregroundColor(.pink)
                    .opacity(0.6)
                    .frame(width: 160, height: 160, alignment: .top)
            )
            .overlay(
                Text("行動開發學院")
                    .frame(width: 170, height: 170, alignment: .bottom)
                    .foregroundColor(.purple)
            )
//        Image(systemName: "airpodspro")
//            .font(.system(size: 150))
//            .foregroundColor(.blue)
//            .shadow(color: .gray, radius: 5, x: 10, y: 0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
