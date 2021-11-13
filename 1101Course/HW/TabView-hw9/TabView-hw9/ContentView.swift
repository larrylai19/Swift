//
//  ContentView.swift
//  TabView-hw9
//
//  Created by Larry - 1024 on 2021/11/13.
//

import SwiftUI

struct Car : Identifiable {
    var id = UUID()
    var name:String
    var image:String
}

let Cars = [
    Car(name: "Black car", image: "Black"),
    Car(name: "Blue car", image: "Blue"),
    Car(name: "Ghost", image: "Ghost"),
    Car(name: "Phantom Tempus", image: "Phantom Tempus"),
    Car(name: "Purple car", image: "Purple"),
    Car(name: "Rainbow car", image: "Rainbow"),
    Car(name: "White car", image: "White"),
    Car(name: "Black car", image: "Black")
]

struct ContentView: View {
    var body: some View {
        VStack {
            Title()
            TabView {
                WelcomeView()
                CarView()
                RandomCarView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Title: View {
    var body: some View {
        Text("好車推薦")
            .font(.system(size: 30))
            .fontWeight(.bold)
            .foregroundColor(.blue)
            .shadow(color: .purple, radius: 3)
    }
}

struct WelcomeView: View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .overlay(
                    VStack {
                        Spacer()
                        Text("好車推薦 APP")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(width: 150, height: 40, alignment: .center)
                            .background(Color.blue)
                    }
                    .frame(width: 150, height: 240, alignment: .center)
                )
            Text("1083316 賴民淵")
        }
        .tabItem {
            Image(systemName: "rosette")
            Text("Welcome")
        }
    }
}

struct BasicImageRow: View {
    var thisCar:Car
    var body: some View {
        HStack {
            Image(thisCar.image)
                .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(5)
            Text(thisCar.name)
        }
    }
}

struct CarDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    var thisCar:Car
    var body: some View {
        CarDetailView2(thisCar: thisCar)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 40)
                    Spacer()
                }
            }
        )
    }
}

struct CarDetailView2: View {
    var thisCar:Car
    var body: some View {
        ScrollView {
            VStack {
                Image(thisCar.image)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .clipped()
                Text(thisCar.name)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                Spacer()
            }
        }
    }
}

struct CarView: View {
    @State var selectedCar:Car?
    var body: some View {
        NavigationView {
            List(Cars) {
                car in
                BasicImageRow(thisCar: car)
                    .onTapGesture {
                        self.selectedCar = car
                    }
            }
        }
        .sheet(item: self.$selectedCar, content: {
            car in
            CarDetailView(thisCar: car)
        })
        .tabItem {
            Image(systemName: "list.dash")
            Text("Car")
        }
    }
}

struct RandomCarView: View {
    @State var currCar = Cars.randomElement()!
    var body: some View {
        VStack {
            Button(action: {
                var newCar = Cars.randomElement()!
                while newCar.name == currCar.name {
                    newCar = Cars.randomElement()!
                }
                currCar = newCar
            }, label: {
                Text("點一下換車")
            })
            .padding(.all, 10)
            .frame(width: 180, height: 80, alignment: .center)
            .font(.system(size: 30))
            .background(Color.purple)
            .foregroundColor(.white)
            .border(Color.purple, width: 5)
            .cornerRadius(20)
            CarDetailView2(thisCar: currCar)
        }
        .tabItem {
            Image(systemName: "link")
            Text("Random")
        }
    }
}
