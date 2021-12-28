//
//  ContentView.swift
//  GetNetworkImage
//
//  Created by Larry - 1024 on 2021/12/28.
//

import SwiftUI

let imageUrl = URL(string: "http://mobiledev.tw/wp-content/uploads/2021/12/spaceship.jpg")

struct ContentView: View {
    
    @State var imageName = "placeholder"
    
    var body: some View {
        AsyncImage(url: imageUrl) { Image in
            Image.resizable(resizingMode: .stretch)
        } placeholder: {
            Image(imageName)
                .overlay(
                    Text("Loading...")
                        .offset(x: 0, y: 80)
                )
        }
        .frame(width: 300, height: 200)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
