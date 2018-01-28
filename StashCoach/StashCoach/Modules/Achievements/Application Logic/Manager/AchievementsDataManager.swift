//
//  AchievementsDataManager.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation

class AchievementsDataManager {

    let cache = CacheStore()

    func achievements() -> [Achievement]? {
        return cache.achievements()
    }
}
