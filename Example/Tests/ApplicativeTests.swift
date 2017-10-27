//
//  ApplicativeTests.swift
//  Miscel
//
//  Created by José Manuel Sánchez Peñarroja on 21/7/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import XCTest

import Miscel

class ApplicativeTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

	func greater(left: Int, than: Int) -> Bool {
		return left > than
	}

    func testOptional() {
		let value: Int? = 7
		let value2: Int? = 12
	
		XCTAssertFalse( (curry(self.greater) <*> value <*> value2)! )
		XCTAssertTrue( (curry(self.greater) <*> value2 <*> value)! )
    }

	func testArray() {
	
		let arrayApplicative = [ { $0 + 3 }, { $0 * 2 } ] <*> [1, 2, 3]
		XCTAssertTrue(arrayApplicative == [ 4, 5, 6, 2, 4, 6 ])

	
		let left = [1, 2]
		let right = [2, 3]
		let result = curry(+) <^> left <*> right
		XCTAssertTrue(result == [ 3, 4, 4, 5 ])
	}
}
