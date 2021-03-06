//
//  DetailMovieViewModel.swift
//  PhilmaXXX
//
//  Created by Guilherme Guimaraes on 23/10/18.
//  Copyright © 2018 Guilherme Guimaraes. All rights reserved.
//

import Foundation
import Domain
final class DetailMovieVCModel: NSObject {
	private let filterUseCase: Domain.FilterUseCase
	private let favoriteMoviesUseCase: Domain.FavoriteMoviesUseCase
	
	private var movie: Movie
	private var favorite: Bool
	
	init(filterUseCase: Domain.FilterUseCase, favoriteMoviesUseCase: Domain.FavoriteMoviesUseCase, movie: Movie = MoviePlaceholder.model1(), favorite: Bool = false) {
		self.filterUseCase = filterUseCase
		self.favoriteMoviesUseCase = favoriteMoviesUseCase
		self.movie = movie
		self.favorite = favorite
	}
	
	public func provideDetailedMetadata(handler: @escaping (Movie?, [Genre]?, Bool, DomainError?) -> ())  {
		filterUseCase.fetchCachedGenres(with: movie.genreIDs) { (result) in
			switch result {
			case .success(let value):
				handler(self.movie, value, self.favorite, nil)
			case .failure(let error):
				handler(nil, nil, false, error)
			}
		}
	}
	
	private func addFavorite() {
		favoriteMoviesUseCase.addFavorite(object: self.movie)
	}
	
	private func deleteFavorite() {
		favoriteMoviesUseCase.deleteFavorite(object: self.movie)
	}
	
	func toggleFavorite() -> Bool{
		favorite.toggle()
		if favorite == true {
			addFavorite()
		} else {
			deleteFavorite()
		}
		return favorite
	}
}
