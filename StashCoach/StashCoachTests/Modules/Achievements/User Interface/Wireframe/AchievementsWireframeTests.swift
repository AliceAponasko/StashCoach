//
//  AchievementsWireframeTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
@testable import StashCoach

class AchievementsWireframeTests: XCTestCase {

    private var achievementsWireframe = AchievementsWireframe()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testShowAchievementsInterface() {
        let window = UIWindow()

        let rootWireframe = MockRootWireframe()
        achievementsWireframe.rootWireframe = rootWireframe

        achievementsWireframe.showAchievementsInterface(in: window)

        XCTAssertEqual(
            rootWireframe.shownViewController,
            achievementsWireframe.viewController)
    }
}
