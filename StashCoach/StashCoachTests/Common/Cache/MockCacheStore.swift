//
//  MockCacheStore.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation
@testable import StashCoach

class MockCacheStore: CacheStore {

    private let mockCacheId: NSString = "mockAchievements"
    let mockCache = NSCache<NSString, NSArray>()

    override func achievements() -> [Achievement]? {
        guard let achievements = mockCache.object(forKey: mockCacheId) else {
            return nil
        }

        return Array(achievements) as? [Achievement]
    }

    override func setAchievements(_ achievements: [Achievement]) {
        mockCache.setObject(achievements as NSArray, forKey: mockCacheId)
    }

    override func removeAll() {
        mockCache.removeAllObjects()
    }
}
