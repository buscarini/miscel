//
//  Base.swift
//  Miscel
//
//  Created by Jose Manuel Sánchez Peñarroja on 1/11/15.
//  Copyright © 2015 vitaminew. All rights reserved.
//

import Foundation

public func update<T>(with: T, @noescape update: (inout T) throws ->() ) rethrows -> T {
	var variable = with
	try update(&variable)
	return variable
}

public func updater<T>(update: (inout T) ->()) -> (T) -> T {
	return { constant in
		var variable = constant
		update(&variable)
		return variable
	}
}

public func delay(time: NSTimeInterval, closure: () -> ()) {
	let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(time * Double(NSEC_PER_SEC)))
	dispatch_after(delayTime, dispatch_get_main_queue(), closure)
}
