//
//  Generic.swift
//  RealmPlatformTests
//
//  Created by Guilherme Guimaraes on 26/10/18.
//  Copyright © 2018 Guilherme Guimaraes. All rights reserved.
//

import Quick
import Nimble
import RealmSwift

@testable import RealmPlatform

//class GenericSpec: QuickSpec {
//	CAN'T BE USED BECAUSE ASSOCIATED TYPE PROTOCOLS ARE ONLY USED AS GENERIC CONSTRAINTS
//
//	override func spec() {
//		describe("both repositories") {
//			let favoritesRepository = FavoritesRepository(realm: try! Realm())
//			let genresRepository = GenresRepository(realm: try! Realm())
//
//			it("are expected to be generics", closure: {
//				expect(favoritesRepository).to(beAKindOf(RealmRepository.self))
//				expect(genresRepository).to(beAKindOf(RealmRepository.self))
//
//			})
//		}
//
//	}
//}
