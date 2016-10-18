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
    
    func testExisting() {
        XCTAssert(app.staticTexts["Calculator"].exists)
        XCTAssert(app.staticTexts["Result:"].exists)
        XCTAssert(app.textFields["tfOne"].exists)
        XCTAssert(app.textFields["tfTwo"].exists)
        XCTAssert(app.buttons["+"].exists)
        XCTAssert(app.buttons["-"].exists)
    }
    
    func testCorrectAddValues() {
        testExisting()
        
        let tfOne = app.textFields["tfOne"]
        tfOne.tap()
        tfOne.typeText("2")
        
        let tfTwo = app.textFields["tfTwo"]
        tfTwo.tap()
        tfTwo.typeText("3")
        
        app.buttons["+"].tap()
        XCTAssert(app.staticTexts["5"].exists)
    }
    
    func testCorrectSubstractValues() {
        testExisting()
        
        let tfOne = app.textFields["tfOne"]
        tfOne.tap()
        tfOne.typeText("6")
        
        let tfTwo = app.textFields["tfTwo"]
        tfTwo.tap()
        tfTwo.typeText("8")
        
        app.buttons["-"].tap()
        XCTAssert(app.staticTexts["-2"].exists)
    }
    
    func testEmptyValues() {
        testExisting()
        
        app.buttons["+"].tap()
        app.alerts["Error"].buttons["OK"].tap()
        
        app.buttons["-"].tap()
        app.alerts["Error"].buttons["OK"].tap()
    }
    
    func testWrongValueOnFirstTf() {
        testExisting()
        
        let tfOne = app.textFields["tfOne"]
        tfOne.tap()
        tfOne.typeText("bla")
        
        app.buttons["+"].tap()
        app.alerts["Error"].buttons["OK"].tap()
        
        app.buttons["-"].tap()
        app.alerts["Error"].buttons["OK"].tap()
    }
    
    func testWrongValueOnSecondTf() {
        testExisting()
        
        let tfOne = app.textFields["tfTwo"]
        tfOne.tap()
        tfOne.typeText("bla")
        
        app.buttons["+"].tap()
        app.alerts["Error"].buttons["OK"].tap()
        
        app.buttons["-"].tap()
        app.alerts["Error"].buttons["OK"].tap()
    }

}
