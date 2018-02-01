//
//  AchievementCellTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
import UIKit
@testable import StashCoach

class AchievementCellTests: XCTestCase {

    private var cell: AchievementCell?
    var achievement = Achievement(
        id: 0,
        level: "0",
        progress: 0,
        total: 0,
        imageUrl: "",
        accessible: 0)
    
    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: Const.General.storyboardId, bundle: Bundle.main)
        let viewController = storyboard.instantiateViewController(
            withIdentifier: AchievementsViewController.viewControllerId) as? AchievementsViewController

        viewController?.achievements = [ achievement ]

        cell = viewController?.achievementsTableView.dequeueReusableCell(
            withIdentifier: AchievementCell.cellId,
            for: IndexPath(item: 0, section: 0)) as? AchievementCell
    }
    
    override func tearDown() {
        super.tearDown()
    }

    func testCellNotNil() {
        XCTAssertNotNil(cell)
    }

    func testNonAccessibleAchievement() {
        achievement.accessible = 0
        cell?.achievement = achievement

        XCTAssertEqual(cell?.isUserInteractionEnabled, false)
        XCTAssertEqual(cell?.inactiveOverlayView.isHidden, false)
    }

    func testAccessibleAchievement() {
        achievement.accessible = 1
        cell?.achievement = achievement

        XCTAssertEqual(cell?.isUserInteractionEnabled, true)
        XCTAssertEqual(cell?.inactiveOverlayView.isHidden, true)
    }

    func testNoProgress() {
        achievement.progress = 0
        achievement.total = 100
        cell?.achievement = achievement

        XCTAssertEqual(
            cell?.progressBar.progress,
            Float(achievement.progress) / Float(achievement.total))
        XCTAssertEqual(
            cell?.currentPointsLabel.text,
            "\(achievement.progress)\(Const.Achievement.pointsText)")
        XCTAssertEqual(
            cell?.maxPointsLabel.text,
            "\(achievement.total)\(Const.Achievement.pointsText)")
    }

    func testSomeProgress() {
        achievement.progress = 0
        achievement.total = 100
        cell?.achievement = achievement

        XCTAssertEqual(
            cell?.progressBar.progress,
            Float(achievement.progress) / Float(achievement.total))
        XCTAssertEqual(
            cell?.currentPointsLabel.text,
            "\(achievement.progress)\(Const.Achievement.pointsText)")
        XCTAssertEqual(
            cell?.maxPointsLabel.text,
            "\(achievement.total)\(Const.Achievement.pointsText)")
    }

    func testMaxProgress() {
        achievement.progress = 100
        achievement.total = 100
        cell?.achievement = achievement

        XCTAssertEqual(
            cell?.progressBar.progress,
            Float(achievement.progress) / Float(achievement.total))
        XCTAssertEqual(
            cell?.currentPointsLabel.text,
            "\(achievement.progress)\(Const.Achievement.pointsText)")
        XCTAssertEqual(
            cell?.maxPointsLabel.text,
            "\(achievement.total)\(Const.Achievement.pointsText)")
    }

    func testLevel() {
        achievement.level = "10"
        cell?.achievement = achievement

        XCTAssertEqual(cell?.levelLabel.text, achievement.level)
    }

    func testEmptyBackgroundImage() {
        achievement.imageUrl = ""
        cell?.achievement = achievement

        XCTAssertNil(cell?.backgroundImage.image)
    }

    func testNoAchievement() {
        cell?.achievement = nil

        XCTAssertNil(cell?.backgroundImage.image)
        XCTAssertEqual(cell?.levelLabel.text, "1")
        XCTAssertEqual(cell?.currentPointsLabel.text, "10pts")
        XCTAssertEqual(cell?.maxPointsLabel.text, "50pts")
        XCTAssertEqual(cell?.progressBar.progress, 0.5)
        XCTAssertEqual(cell?.inactiveOverlayView.isHidden, false)
    }
}
