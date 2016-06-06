//
//  Base.swift
//  Miscel
//
//  Created by Jose Manuel Sánchez Peñarroja on 1/11/15.
//  Copyright © 2015 vitaminew. All rights reserved.
//

import Foundation

public func with<T>(constant: T, @noescape update: (inout T) throws ->() ) rethrows -> T {
	var variable = constant
	try update(&variable)
	return variable
}

public func name(forClass: AnyClass) -> String {
	return String(forClass.self)
}

