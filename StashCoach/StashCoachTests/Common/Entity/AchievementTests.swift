//
//  AchievementTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
@testable import StashCoach

class AchievementTests: XCTestCase {

    private var achievement = Achievement(
        id: 0,
        level: "0",
        progress: 0,
        total: 0,
        imageUrl: "",
        accessible: 0)
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testEqualAchievements() {
        var testAchievement = Achievement(
            id: 0,
            level: "10",
            progress: 10,
            total: 50,
            imageUrl: "",
            accessible: 1)

        XCTAssertTrue(achievement == testAchievement)

        testAchievement.id = 1

        XCTAssertFalse(achievement == testAchievement)
    }
}
