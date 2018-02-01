//
//  AchievementsRemoteDataManagerTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
@testable import StashCoach

class AchievementsRemoteDataManagerTests: XCTestCase {

    private var remoteDataManager = AchievementsRemoteDataManager()
    private var mockCache = MockCacheStore()
    
    override func setUp() {
        super.setUp()

        remoteDataManager.cache = mockCache
    }
    
    override func tearDown() {
        mockCache.removeAll()
        super.tearDown()
    }

    func testNoPath() {
        remoteDataManager.path = nil

        remoteDataManager.achievements { achievements in
            XCTAssertNil(achievements)
        }
    }

    func testWrongPath() {
        remoteDataManager.path = Bundle.main.path(forResource: "a", ofType: "json")

        remoteDataManager.achievements { achievements in
            XCTAssertNil(achievements)
        }
    }

    func testSavedAchievements() {
        remoteDataManager.achievements { [weak self] achievements in
            XCTAssertNotNil(achievements)
            XCTAssertNotNil(self?.mockCache.achievements())
        }
    }
}
