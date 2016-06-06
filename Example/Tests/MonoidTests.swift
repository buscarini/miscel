//
//  MonoidTests.swift
//  Miscel
//
//  Created by José Manuel Sánchez Peñarroja on 6/6/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest

import Miscel

class MonoidTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
	// MARK: Help Functions
	static func fold<T: Monoid>(values: [T]) -> T {
		return values.reduce(T.unit, combine: T.combine)
	}
	
	// MARK: Tests
    func testString() {
		let values = [ "blah", "blih", "bluh" ]
		let folded = MonoidTests.fold(values)
		XCTAssert(folded == "blahblihbluh")
    }
    
	func testSum() {
		let values = [ Sum(1), Sum(20), Sum(200) ]
		let folded = MonoidTests.fold(values).value
		XCTAssert(folded == 221)
    }
	
	func testArray() {
		let values = [ [1, 2, 3], [4], [5, 6] ]
		let folded = MonoidTests.fold(values)
		XCTAssert(folded == [1, 2, 3, 4, 5, 6])
    }
}
