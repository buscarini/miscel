//
//  SequenceType+Take.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 8/6/16.
//
//

import Foundation

extension SequenceType where SubSequence : SequenceType, SubSequence.Generator.Element == Generator.Element, SubSequence.SubSequence == SubSequence {

	func takeFirst(n: Int) -> AnySequence<Self.Generator.Element> {
		return self.prefix(n)
	}
}
