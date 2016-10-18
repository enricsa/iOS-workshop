//
//  CalculatorUITests.swift
//  CalculatorUITests
//
//  Created by Enric Sánchez on 17/10/16.
//  Copyright © 2016 axa. All rights reserved.
//

import XCTest

class CalculatorUITests: XCTestCase {
    
    let app = XCUIApplication()
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCalculator() {
        XCTAssert(app.staticTexts["Calculator"].exists)
        XCTAssert(app.staticTexts["Result:"].exists)
        
        print(app.debugDescription)
        
        let tfOne = app.textFields["tfOne"]
        tfOne.tap()
        tfOne.typeText("2")
        
        let tfTwo = app.textFields["tfTwo"]
        tfTwo.tap()
        tfTwo.typeText("3")
        
        app.buttons["+"].tap()
        
        XCTAssert(app.staticTexts["5"].exists)
        
        app.buttons["-"].tap()
        
        XCTAssert(app.staticTexts["-1"].exists)
    }
    
}
