//
//  MockAchievementsInteractorOutput.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation
@testable import StashCoach

class MockAchievementsInteractorOutput: AchievementsInteractorOutput {

    var didCallFoundAchievements = false

    init() { }

    func foundAchievements(_ achievements: [Achievement]) {
        didCallFoundAchievements = true
    }
}
