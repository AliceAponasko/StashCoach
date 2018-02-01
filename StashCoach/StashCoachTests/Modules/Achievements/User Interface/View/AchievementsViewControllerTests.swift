//
//  AchievementsViewControllerTests.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import XCTest
import UIKit
@testable import StashCoach

class AchievementsViewControllerTests: XCTestCase {

    private var viewController: AchievementsViewController?
    
    override func setUp() {
        super.setUp()

        let storyboard = UIStoryboard(name: Const.General.storyboardId, bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(
            withIdentifier: AchievementsViewController.viewControllerId) as? AchievementsViewController
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testShowingNoContentView() {
        viewController?.showNoContentMessage()

        XCTAssertEqual(viewController?.view, viewController?.noContentView)
    }

    func testShowingAchievementsView() {
        viewController?.showAchievements([])

        XCTAssertEqual(viewController?.view, viewController?.achievementsTableView)
    }
}
