//
//  AchievementsPresenterTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
@testable import StashCoach

class AchievementsPresenterTests: XCTestCase {

    private var presenter = AchievementsPresenter()
    private var interactor = MockAchievementsInteractorInput()
    private var userInterface = MockAchievementLoadable()

    private var achievement = Achievement(
        id: 0,
        level: "0",
        progress: 0,
        total: 0,
        imageUrl: "",
        accessible: 0)
    
    override func setUp() {
        super.setUp()

        presenter.achievementInteractor = interactor
        presenter.userInterface = userInterface
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testFoundEmptyAchievements() {
        presenter.foundAchievements([])

        XCTAssertTrue(userInterface.didShowNoContentMessage)
    }

    func testFoundSomeAchievements() {
        presenter.foundAchievements([ achievement ])

        XCTAssertTrue(userInterface.didShowAchievements)
    }

    func testUpdateView() {
        presenter.updateView()

        XCTAssertTrue(interactor.didCallFindAchievements)
    }
}
