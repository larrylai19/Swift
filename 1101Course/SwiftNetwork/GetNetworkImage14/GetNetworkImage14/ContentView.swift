//
//  ContentView.swift
//  GetNetworkImage14
//
//  Created by Larry - 1024 on 2021/12/28.
//

import SwiftUI

let imageUrlString = "http://mobiledev.tw/wp-content/uploads/2021/12/spaceship.jpg"

struct ContentView: View {
    var body: some View {
        ImageView(withURL: imageUrlString)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
