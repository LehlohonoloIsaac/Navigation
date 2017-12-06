//
//  MenuNavigationViewModelTests.swift
//  Menu-NavigationTests
//
//  Created by dvt on 2017/12/05.
//  Copyright © 2017 dvt. All rights reserved.
//

import XCTest
@testable import Menu_Navigation

class MenuNavigationViewModelTests: XCTestCase {
    var menuNavigationViewModel: MenuNavigationViewModel!
    
    override func setUp() {
        super.setUp()
        menuNavigationViewModel = MenuNavigationViewModel()
    }
    
    override func tearDown() {
        super.tearDown()
        menuNavigationViewModel = nil
    }
    
    func testThatWhenTheNavigationDrawerHasWidthWhenUpdatedWithFrameOfWidth100() {
        let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        self.menuNavigationViewModel.updateFrame(with: frame) {}
        let expectedWidth: CGFloat = 100/2 + 100/4
        XCTAssertEqual(expectedWidth, menuNavigationViewModel.navigationDrawerWidth)
    }
    
    func testThatWhenTheNavigationDrawerHasWidthWhenUpdatedWithFrameOfHeight100() {
        let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        self.menuNavigationViewModel.updateFrame(with: frame) {}
        let expectedHeight: CGFloat = 100
        XCTAssertEqual(expectedHeight, menuNavigationViewModel.navigationDrawerHeight)
    }
    
    func testThatTheCustomFrameGetsUpdatedCorrectly() {
        let frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        self.menuNavigationViewModel.updateFrame(with: frame) {}
        let expectedCustomFrame = CGRect(x: 0, y: 0, width: (100/2 + 100/4), height: 100)
        XCTAssertEqual(expectedCustomFrame, menuNavigationViewModel.customFrame)
    }
    
}
