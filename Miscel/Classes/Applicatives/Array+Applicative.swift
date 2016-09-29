//
//  Array+Applicative.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 21/7/16.
//
//

import Foundation

extension Array {
    public func apply<U>(fs: [Element -> U]) -> [U] {
        var result = [U]()
        for f in fs {
            for element in self.map(f) {
                result.append(element)
            }
        }
        return result
    }
}
//public func <*><T0, T1>(lhs: [T0 -> T1], rhs: [T0]) -> [T1] {
//    return lhs.flatMap { f in rhs.map(f) }
//}

public func <*><T, U>(f: [T -> U], a: [T]) -> [U] {
    return a.apply(f)
}


