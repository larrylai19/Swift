//
//  ContentView.swift
//  HelloButton
//
//  Created by Larry - 1024 on 2021/10/19.
//

import SwiftUI

struct ContentView: View {
    @State var count = 0
    var body: some View {
        VStack {
            Text(String(count))
                .padding(.all,10)
                .frame(width: 150, height: 120,
                alignment: .center)
                .font(.system(size: 50))
            Button(action: {
                count += 1
            }, label: {
                Text("ADD")
                    .padding(.all,10)
                    .frame(width: 300, height: 100,
                    alignment: .center)
                    .font(.system(size: 50))
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .border(Color.purple, width: 5)
                    .cornerRadius(20)
            })
            .padding(.all, 30)
            Button(action: {
                count -= 1
            }, label: {
                Text("SUB")
                    .padding(.all,10)
                    .frame(width: 300, height: 100,
                    alignment: .center)
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
