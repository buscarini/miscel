//
//  Optional+Applicative.swift
//  Pods
//
//  Created by José Manuel Sánchez Peñarroja on 21/7/16.
//
//

import Foundation

//public func <*><A, B>(lhs: (A -> B)?, rhs: A?) -> B? {
//    return lhs.flatMap { f in rhs.map(f) }
//}


extension Optional {
    public func apply<U>(f: (Wrapped -> U)?) -> U? {
        switch f {
        case .Some(let someF): return self.map(someF)
        case .None: return .None
        }
    }
}

public func <*><T, U>(f: (T -> U)?, a: T?) -> U? {
    return a.apply(f)
}

