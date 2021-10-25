//
//  ContentView.swift
//  Image-hw6
//
//  Created by Larry - 1024 on 2021/10/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("giwawa")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 800, height: 900, alignment: .center)
            .overlay(
                Text("    我是吉娃娃\n我很兇別來惹我")
                    .font(.system(size: 50))
                    .fontWeight(.bold)
                    .opacity(0.8)
                    .frame(width: 400, height: 700, alignment: .bottom)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
