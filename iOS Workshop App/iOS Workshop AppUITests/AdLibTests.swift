//
//  iOS_Workshop_AppUITests.swift
//  iOS Workshop AppUITests
//
//  Created by Elysia Lock on 6/19/19.
//  Copyright © 2019 Elysia Lock. All rights reserved.
//

import XCTest

class AdLibTests: BaseUITest {

    override func setUp() {
        super.setUp()
    }
    
    //Test methods must start with the word "test" to be picked up as a test case
    func testCreateAdLib() {
        app.buttons["Dragon Ad Lib"].tap()
        XCTAssertTrue(app.staticTexts["Provide a verb..."].waitForExistence(timeout: 5), "Could not find the string 'Provide a verb...'")
        
        app.textFields["fight, for example"].tap()
        app.typeText("fight")
        
        app.textFields["brain, for example"].tap()
        app.typeText("brain")
        
        app.buttons["Slay the Dragon!"].tap()

//        Uncomment the line below to see a failing test
//        app.buttons["Indeed"].tap()
    }
}
