//
//  MovieModel.swift
//  LiveCodeNBS
//
//  Created by irfan wahendra on 26/06/25.
//

import Foundation

struct MovieModel: Identifiable, Equatable {
  let id: UUID
  let ImageName: String
  let title: String
  let year: String
  let category: String
}

extension MovieModel {
  static let dummyMovies: [MovieModel] = [
    .init(id: UUID(), ImageName: "ItaewonClass", title: "Itaewewon Class", year: "2020", category: "Drama, Asian, Comedy, Series"),
    .init(id: UUID(), ImageName: "Conjuring", title: "Conjuring 3", year: "2019", category: "Horor, Dark"),
    .init(id: UUID(), ImageName: "Cars", title: "Cars 3", year: "2020", category: "Kids, Comedy, Racing"),
    .init(id: UUID(), ImageName: "Coco", title: "Coco", year: "2019", category: "Kids, Family"),
  ]
}



