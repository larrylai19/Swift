//
//  MovieRow.swift
//  GetMovieDataList
//
//  Created by Larry - 1024 on 2021/12/28.
//

import SwiftUI

struct MovieRow: View {
    
    @State var imageName = "placeholder"
    var movie: Movie
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: "https://image.tmdb.org/t/p/original/\(movie.poster_path)")!, content: {
                image in
                image.resizable(resizingMode:.stretch)
            }, placeholder: {
                Image(imageName)
                    .resizable()
                    .frame(width: 120, height: 160)
            })
            .frame(width: 120, height: 160)
            
            VStack {
                Text(movie.title)
                    .foregroundColor(Color.blue)
                Text(movie.release_date)
                    .foregroundColor(Color.gray)
                Text("評分:\(movie.vote_average, specifier: "%.1f")")
            }
        }.padding()
    }
}
