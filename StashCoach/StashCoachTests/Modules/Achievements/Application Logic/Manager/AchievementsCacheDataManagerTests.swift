//
//  AchievementsCacheDataManagerTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
@testable import StashCoach

class AchievementsCacheDataManagerTests: XCTestCase {

    private var cacheDataManager = AchievementsCacheDataManager()
    private var mockCache = MockCacheStore()

    private var achievement = Achievement(
        id: 0,
        level: "0",
        progress: 0,
        total: 0,
        imageUrl: "",
        accessible: 0)
    
    override func setUp() {
        super.setUp()

        cacheDataManager.cache = mockCache
    }
    
    override func tearDown() {
        mockCache.removeAll()
        super.tearDown()
    }

    func testNoAchievements() {
        mockCache.removeAll()

        XCTAssertNil(cacheDataManager.achievements())
    }

    func testSavedAchievements() {
        mockCache.setAchievements([achievement])

        XCTAssertNotNil(cacheDataManager.achievements())
        XCTAssertEqual(cacheDataManager.achievements()!.count, 1)
    }
}
