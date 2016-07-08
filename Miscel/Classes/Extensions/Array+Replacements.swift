//
//  Array+Replacements.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 8/7/16.
//
//

import Foundation

extension Array {
	func replacing(with: Element, shouldReplace: (Element) -> Bool) -> Array {
		return self.map { current in
			return shouldReplace(current) ? with : current
		}
	}
}
