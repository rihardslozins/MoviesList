//
//  Movie.swift
//  MoviesList
//
//  Created by Rihards Lozins on 05/02/2021.
//

import Foundation


struct Movie {
    
    let title: String
    let year: String
    let genre: String
    let poster: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let titles = DataManager.shared.title
        let years = DataManager.shared.year
        let genres = DataManager.shared.genre
        let posters = DataManager.shared.poster
        
        for index in 0..<titles.count {
            let movie = Movie(title: titles[index], year: years[index], genre: genres[index], poster: posters[index])
            movies.append(movie)
        }
        return movies
    }
}
