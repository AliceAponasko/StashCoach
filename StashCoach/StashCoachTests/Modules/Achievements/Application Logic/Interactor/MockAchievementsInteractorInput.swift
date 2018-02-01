//
//  MockAchievementsInteractorInput.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation
@testable import StashCoach

class MockAchievementsInteractorInput: AchievementsInteractorInput {

    var didCallFindAchievements = false

    init() { }

    func findAchievements() {
        didCallFindAchievements = true
    }
}
