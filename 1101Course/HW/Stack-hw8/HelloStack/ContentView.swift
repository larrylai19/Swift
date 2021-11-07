//
//  ContentView.swift
//  HelloStack
//
//  Created by Larry - 1024 on 2021/10/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            TitleView()
            HStack {
                CarView(imageName: "Black")
                CarView(imageName: "Blue")
                CarView(imageName: "Ghost")
            }
            HStack {
                CarView(imageName: "Purple")
                CarView(imageName: "Rainbow")
                CarView(imageName: "White")
            }
            FishView()
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
            Text("車庫")
                .font(.title)
                .foregroundColor(Color(red: 29/255, green: 40/255, blue: 192/255))
        })
    }
}

struct CarView: View {
    var imageName:String
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200, alignment: .center)
            Text(imageName.capitalized)
                .fontWeight(.bold)
                .font(.system(size: 25))
        }
        .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
    }
}

struct FishView: View {
    var body: some View {
        VStack {
            Image("Phantom Tempus")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.all, 15)
            Text("Phantom Tempus")
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
