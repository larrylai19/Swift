//
//  ContentView.swift
//  GetMovieDataList
//
//  Created by Larry - 1024 on 2021/12/28.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.movies.results, id:\.id, rowContent: {
                movie in
                NavigationLink(destination: MovieDetailView(movie: movie), label: {
                    MovieRow(movie: movie)
                })
            })
                .navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
