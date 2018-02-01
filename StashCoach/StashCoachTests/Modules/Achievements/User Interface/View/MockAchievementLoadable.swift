//
//  MockAchievementLoadable.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation
@testable import StashCoach

class MockAchievementLoadable: AchievementLoadable {

    var didShowNoContentMessage = false
    var didShowAchievements = false
    var didCallReloadAchievements = false

    init() { }

    func showNoContentMessage() {
        didShowNoContentMessage = true
    }

    func showAchievements(_ achievements: [Achievement]) {
        didShowAchievements = true
    }

    func reloadAchievements() {
        didCallReloadAchievements = true
    }
}
