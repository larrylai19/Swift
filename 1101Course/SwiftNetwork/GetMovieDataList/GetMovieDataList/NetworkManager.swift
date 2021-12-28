//
//  NetworkManager.swift
//  GetMovieDataList
//
//  Created by Larry - 1024 on 2021/12/28.
//

import Foundation
import Combine
import SwiftUI

class NetworkManager: ObservableObject {
    var didChange = PassthroughSubject<NetworkManager, Never>()
    @Published var movies = MovieList(results: []) {
        didSet {
            didChange.send(self)
        }
    }
    
    init() {
        let api_key = "4a932524dbac03b2b0c49c4607688515"
        let language = "zh-TW"
        let primary_release_date = "2021-12-01"
        
        guard let url = URL(string: "https://api.themoviedb.org/3/discover/movie?api_key=\(api_key)&language=\(language)&primary_release_date.gte=\(primary_release_date)&sort_by=popularity.desc") else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            print("Data: \(data)")
            let movies = try! JSONDecoder().decode(MovieList.self, from: data)
            DispatchQueue.main.async {
                print("Movies: \(movies)")
                self.movies = movies
            }
        }.resume()
    }
}
