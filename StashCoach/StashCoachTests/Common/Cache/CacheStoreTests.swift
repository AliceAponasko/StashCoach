//
//  CacheStoreTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
@testable import StashCoach

class CacheStoreTests: XCTestCase {

    private var cacheStore = CacheStore()

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

    func testEmptyAchievements() {
        cacheStore.setAchievements([])

        XCTAssertEqual(cacheStore.achievements()?.count, 0)
    }

    func testNilAchievements() {
        cacheStore.removeAll()

        XCTAssertNil(cacheStore.achievements())
    }

    func testAchievements() {
        cacheStore.setAchievements([ achievement ])

        XCTAssertEqual(cacheStore.achievements()?.count, 1)
    }
}
