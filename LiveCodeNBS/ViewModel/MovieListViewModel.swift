//
//  MovieListViewModel.swift
//  LiveCodeNBS
//
//  Created by irfan wahendra on 26/06/25.
//

import Foundation

@MainActor
class MovieViewModel: ObservableObject {
    static let shared = MovieViewModel()

    @Published var favoriteMovies: [MovieModel] = MovieModel.dummyMovies

    private init() {
      let baseMovies = MovieModel.dummyMovies
      favoriteMovies = Array(repeating: baseMovies, count: 2).flatMap { $0 }
      
    }
    
    func removeFromFavorites(_ movie: MovieModel) {
        favoriteMovies.removeAll { $0 == movie }
    }
}
