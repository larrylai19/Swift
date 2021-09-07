//
//  ContentView.swift
//  HelloButton
//
//  Created by Larry - 1024 on 2021/9/6.
//

import SwiftUI

let choices = ["剪刀", "石頭", "布"]

struct ContentView: View {
    @State var showResult:String = "?"
    var body: some View {
        VStack {
            Text(showResult)
                .padding(.all, 10)
                .frame(width: 300, height: 120, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(.system(size: 100))
            Button(action: {
                self.showResult = choices[Int.random(in: 0...2)]
            }, label: {
                Text("GO")
                    .padding(.all, 10)
                    .frame(width: 300, height: 100, alignment: .center)
                    .font(.system(size: 50))
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .border(Color.purple, width: 5)
                    .cornerRadius(20)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
