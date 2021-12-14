//
//  ContentView.swift
//  HelloMap
//
//  Created by Larry - 1024 on 2021/12/14.
//

import SwiftUI
import MapKit

struct Restaurant {
    var name: String
    var description: String
    var location: CLLocationCoordinate2D
}

var thisRestaurant = Restaurant(name: "無敵蛋餅", description: "五興路 347 號", location: CLLocationCoordinate2D(latitude: 24.9655141, longitude: 121.1924017))

struct ContentView: View {
    
    @State var currentRestaurant = thisRestaurant
    
    var body: some View {
        VStack {
            MapView(currentRestaurant: $currentRestaurant)
            Text("目前位置")
                .frame(height: 50, alignment: .center)
                .font(.title)
        }
        .padding(.all, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
