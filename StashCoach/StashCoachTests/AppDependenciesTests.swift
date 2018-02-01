//
//  AppDependenciesTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
import UIKit
@testable import StashCoach

class AppDependenciesTests: XCTestCase {

    private var dependencies = AppDependencies()
    private var mockWireframe = MockAchievementsWireframe()
    
    override func setUp() {
        super.setUp()

        dependencies.achievementsWireframe = mockWireframe
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testShowRootVC() {
        let window = UIWindow()

        dependencies.showRootVC(in: window)
        XCTAssertTrue(mockWireframe.didShowAchievementsInterface)
    }
}
