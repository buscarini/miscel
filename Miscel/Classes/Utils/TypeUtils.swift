//
//  TypeUtils.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 7/6/16.
//
//

import Foundation

public struct TypeUtils {
	public static func name(thing: Any) -> String {
		let result = String(thing.self)
		return result.componentsSeparatedByString(".").last ?? result
	}
}

