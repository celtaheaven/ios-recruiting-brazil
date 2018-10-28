//
//  UC05 - CachedGenres.swift
//  Domain
//
//  Created by Guilherme Guimaraes on 21/10/18.
//  Copyright © 2018 Guilherme Guimaraes. All rights reserved.
//

public protocol FilterUseCase {
	func fetchCachedGenres(handler: @escaping ([Genre]?, Error?) -> ())
	func fetchCachedGenres(with IDs: [Int], handler: @escaping ([Genre]?, Error?) -> ())
}