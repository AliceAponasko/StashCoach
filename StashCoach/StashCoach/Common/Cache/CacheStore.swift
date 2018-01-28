//
//  CacheStore.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation

class CacheStore {

    // MARK: Constants

    private let cacheId: NSString = "achievements"
    private let cache = NSCache<NSString, NSArray>()

    // MARK: Achievements

    func achievements() -> [Achievement]? {

        guard let achs = cache.object(forKey: cacheId) else {
            return nil
        }

        return Array(achs) as? [Achievement]
    }

    func setAchievements(_ achievements: [Achievement]) {

        cache.setObject(achievements as NSArray, forKey: cacheId)
    }
}
