//
//  MyFavoriteView.swift
//  LiveCodeNBS
//
//  Created by irfan wahendra on 26/06/25.
//

import SwiftUI

struct MyFavoriteView: View {
  @ObservedObject var viewModel = MovieViewModel.shared
      
      var body: some View {
          NavigationView {
              List {
                  ForEach(viewModel.favoriteMovies) { movie in
                      MovieRowView(movie: movie)
                      .listRowSeparator(.hidden)
                  }
              }
              .listStyle(.grouped)
              .navigationTitle("Favorite Movies")
          }
      }
}

#Preview {
    MyFavoriteView()
}
