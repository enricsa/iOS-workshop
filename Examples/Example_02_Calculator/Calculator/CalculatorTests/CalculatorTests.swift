//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Enric Sánchez on 17/10/16.
//  Copyright © 2016 axa. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    let calc = Calculator()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAdd() {
        XCTAssertEqual(calc.add(a: 2, b: 2), 4)
    }
    
    func testSubstract() {
        XCTAssertEqual(calc.substract(a: 2, b: 2), 0)
    }
    
}
