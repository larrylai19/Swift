//
//  ContentView.swift
//  random-hw7
//
//  Created by Larry - 1024 on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    @State var text = "Random"
    let list = ["剪刀", "石頭", "布"]
    var body: some View {
        VStack {
            Text(text)
                .font(.system(size: 70))
            Button(action: {
                text = list.randomElement()!
            }, label: {
                Text("Go")
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
