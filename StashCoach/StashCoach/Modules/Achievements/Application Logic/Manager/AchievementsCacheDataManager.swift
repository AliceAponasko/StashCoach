//
//  AchievementsCacheDataManager.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation

class AchievementsCacheDataManager {

    // MARK: Properties

    var cache: CacheStore?

    // MARK: Fetch

    func achievements() -> [Achievement]? {
        return cache?.achievements()
    }
}
