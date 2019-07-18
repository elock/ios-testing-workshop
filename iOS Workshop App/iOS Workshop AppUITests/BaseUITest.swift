//
//  BaseUITest.swift
//  iOS Workshop AppUITests
//
//  Created by Elysia Lock on 7/17/19.
//  Copyright © 2019 Elysia Lock. All rights reserved.
//

import XCTest

class BaseUITest: XCTestCase {

    // First let's create a constant for our app under test to make our tests more readable
    let app = XCUIApplication()

    override func setUp() {

        continueAfterFailure = false

        // Now you'll want to set any test defaults or environmental configs here.
        continueAfterFailure = false
        app.launchArguments = ["-StartFromCleanState", "YES"]
        
        // Then launch the application under test.
        app.launch()
        
        // Next you'll set the orientation.
        XCUIDevice.shared.orientation = .portrait
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        // If you need to make sure your application is logged out after the end of a test run, this is where you'd do that.
    }

    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

}
