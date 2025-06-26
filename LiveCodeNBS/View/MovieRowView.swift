//
//  MoviewRowView.swift
//  LiveCodeNBS
//
//  Created by irfan wahendra on 26/06/25.
//

import SwiftUI

struct MovieRowView: View {
    let movie: MovieModel
    @ObservedObject var viewModel = MovieViewModel.shared

    var body: some View {
      HStack (alignment: .top) {
            Image(movie.ImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 178, height: 100)
                .clipped()
                .cornerRadius(12)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(movie.title)
                .font(.system(size: 16))
                Text(movie.year)
                .font(.system(size: 14))
                Text(movie.category)
                .font(.system(size: 12))
                    .foregroundColor(.gray)
            }
            
            Spacer()
            
            Button(action: {
                viewModel.removeFromFavorites(movie)
            }) {
                Image("HeartIcon")
                .resizable()
                .scaledToFill()
                .frame(width: 24, height: 24)
                .clipped()
            }
        }
    }
}


#Preview {
  let sampleData = MovieModel.dummyMovies
  return MovieRowView(movie: sampleData[0])
    .padding()
}
