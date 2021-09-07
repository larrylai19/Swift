//
//  ContentView.swift
//  ImageWithText
//
//  Created by Larry - 1024 on 2021/9/6.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("Jobs")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(
                Text("Stay Hungry, \nStay Foolish")
                    .fontWeight(.heavy)
                    .lineSpacing(20)
                    .font(.system(size: 32.0))
                    .foregroundColor(.white)
                    .frame(width: 350, height: 150, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(30.0)
                    .opacity(/*@START_MENU_TOKEN@*/0.8/*@END_MENU_TOKEN@*/)
                ,
                alignment: .bottom
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
