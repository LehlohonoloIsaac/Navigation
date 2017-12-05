//
//  NavigationDrawerUITests.swift
//  Menu-NavigationUITests
//
//  Created by dvt on 2017/12/05.
//  Copyright © 2017 dvt. All rights reserved.
//

import XCTest

class NavigationDrawerUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testExample() {
    }
    
}
