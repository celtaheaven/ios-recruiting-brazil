//
//  EnvironmentSetupUseCase.swift
//  Domain
//
//  Created by Guilherme Guimaraes on 21/10/18.
//  Copyright © 2018 Guilherme Guimaraes. All rights reserved.
//

public protocol EnvironmentSetupUseCase {
	func setInCache(_ genres: [Genre])
}
