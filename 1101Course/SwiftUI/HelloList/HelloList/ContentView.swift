//
//  ContentView.swift
//  HelloList
//
//  Created by Larry - 1024 on 2021/10/26.
//

import SwiftUI

struct Restaurant : Identifiable {
    var id = UUID()
    var name:String
    var image:String
}

var restaurants = [ Restaurant(name: "Cafe Deadend", image: "cafedeadend"), Restaurant(name: "Homei", image: "homei"), Restaurant(name: "Teakha", image: "teakha"), Restaurant(name: "Cafe Loisl", image: "cafeloisl"), Restaurant(name: "Petite Oyster", image: "petiteoyster"), Restaurant(name: "For Kee Restaurant", image: "forkeerestaurant"), Restaurant(name: "Po's Atelier", image: "posatelier"), Restaurant(name: "Bourke Street Bakery", image: "bourkestreetbakery"), Restaurant(name: "Haigh's Chocolate", image: "haighschocolate"), Restaurant(name: "Palomino Espresso", image: "palominoespresso"), Restaurant(name: "Upstate", image: "upstate"), Restaurant(name: "Traif", image: "traif"), Restaurant(name: "Graham Avenue Meats And Deli", image: "grahamavenuemeats"), Restaurant(name: "Waffle & Wolf", image: "wafflewolf"), Restaurant(name: "Five Leaves", image: "fiveleaves"), Restaurant(name: "Cafe Lore", image: "cafelore"), Restaurant(name: "Confessional", image: "confessional"), Restaurant(name: "Barrafina", image: "barrafina"), Restaurant(name: "Donostia", image: "donostia"), Restaurant(name: "Royal Oak", image: "royaloak"), Restaurant(name: "CASK Pub and Kitchen", image: "caskpubkitchen") ]

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(restaurants) {
                restaurantItem in
                NavigationLink(
                    destination: RestaurantDetailView(thisRestaurant: restaurantItem),
                    label: {
                        BasicImageRow(thisRestaurant: restaurantItem)
                    })
            }
            .navigationBarTitle("餐廳列表")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct BasicImageRow: View {
    var thisRestaurant:Restaurant
    var body: some View {
        HStack {
            Image(thisRestaurant.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(thisRestaurant.name)
        }
    }
}

struct RestaurantDetailView: View {
    var thisRestaurant:Restaurant
    var body: some View {
        VStack {
            Image(thisRestaurant.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipped()
            Text(thisRestaurant.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
            Spacer()
        }
    }
}
