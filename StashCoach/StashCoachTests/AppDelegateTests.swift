//
//  AppDelegateTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
@testable import StashCoach

class AppDelegateTests: XCTestCase {

    private var appDelegate = AppDelegate()
    private var window = UIWindow()
    private var mockDependencies = MockAppDependencies()
    
    override func setUp() {
        super.setUp()
        appDelegate.window = window
        appDelegate.dependencies = mockDependencies
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testShowRootViewControllerOnStart() {
        _ = appDelegate.application(
            UIApplication.shared,
            didFinishLaunchingWithOptions: nil)

        XCTAssertTrue(mockDependencies.didShowRootVC)
    }
}
