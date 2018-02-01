//
//  AchievementsInteractorTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
@testable import StashCoach

class AchievementsInteractorTests: XCTestCase {

    private var interactor = AchievementsInteractor(
        cache: MockCacheDataManager(),
        remote: MockRemoteDataManager())
    private var mockDelegate = MockAchievementsInteractorOutput()
    
    override func setUp() {
        super.setUp()

        interactor.output = mockDelegate
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testFindAchievements() {
        interactor.findAchievements()
        XCTAssertTrue(mockDelegate.didCallFoundAchievements)
    }
}
