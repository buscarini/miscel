//
//  Functor.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 21/7/16.
//
//

import Foundation

infix operator <^> { associativity left }

public func <^><T, U>(f: T -> U, a: T?) -> U? {
    return a.map(f)
}

