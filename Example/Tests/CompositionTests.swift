//
//  CompositionTests.swift
//  Miscel
//
//  Created by José Manuel Sánchez Peñarroja on 1/6/16.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import UIKit

import XCTest

import Miscel

class CompositionTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
	
	// MARK: Pure Simple Functions

static func shout(s: String) -> String {
	return s.uppercaseString + "!"
}

static func double(x: Int) -> Int {
	return x*2
}

static func length(s: String) -> Int {
	return s.characters.count
}



    func testComposeOnce() {
		let string = "blah"
		
		let transform = compose(CompositionTests.length, CompositionTests.shout)
		
		XCTAssert(transform(string) == 5)
		
		let shoutLength = CompositionTests.length ∘ CompositionTests.shout
		XCTAssert(shoutLength(string) == 5)
    }
	
	func testComposeMultiple() {
		let string = "blah"
		
		let transform = compose(CompositionTests.double, compose(CompositionTests.length, CompositionTests.shout))
		
		XCTAssert(transform(string) == 10)
		
		let shoutLength = CompositionTests.double ∘ CompositionTests.length ∘ CompositionTests.shout
		XCTAssert(shoutLength(string) == 10)
	}

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }

}




