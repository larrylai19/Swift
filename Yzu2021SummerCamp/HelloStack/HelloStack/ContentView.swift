//
//  ContentView.swift
//  HelloStack
//
//  Created by Larry - 1024 on 2021/9/7.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleView()
            HStack {
                FruitView(imageName: "tomato")
                FruitView(imageName: "banana")
                FruitView(imageName: "guava")
            }
            ZStack {
                FishView()
                Text("保存期限: 2025/12/32")
                    .font(.system(size: 20))
                    .foregroundColor(.yellow)
                    .padding(.all, 5)
                    .background(Color.black)
                    .opacity(0.7)
                    .offset(x: 40, y: 20)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TitleView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 2, content: {
            Text("Larry 的")
                .font(.system(size: 30))
            Text("冰箱")
                .font(.title)
                .foregroundColor(Color(red: 27 / 255, green: 192 / 255, blue: 254 / 255))
        })
    }
}

struct FruitView: View {
    var imageName: String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200, alignment: .center)
            Text(imageName.capitalized)
                .fontWeight(.bold)
                .font(.system(size: 30))
        }.padding(.all, 2)
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
    }
}

struct FishView: View {
    var body: some View {
        VStack {
            Image("fish")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.all, 15)
            Text("Fish")
                .fontWeight(.bold)
                .font(.system(size: 30))
        }
    }
}

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}
