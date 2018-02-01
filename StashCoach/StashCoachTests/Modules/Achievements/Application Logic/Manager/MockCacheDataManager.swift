//
//  MockCacheDataManager.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation
@testable import StashCoach

class MockCacheDataManager: AchievementsCacheDataManager {

    private var achievement = Achievement(
        id: 0,
        level: "0",
        progress: 0,
        total: 0,
        imageUrl: "",
        accessible: 0)

    override func achievements() -> [Achievement]? {
        return [ achievement ]
    }
}
