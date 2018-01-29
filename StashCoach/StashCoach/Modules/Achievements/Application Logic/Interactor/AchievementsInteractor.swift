//
//  AchievementsInteractor.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation

class AchievementsInteractor {

    // MARK: Delegate

    weak var output: AchievementsInteractorOutput?

    // MARK: Properties

    var cacheDataManager: AchievementsCacheDataManager!
    var remoteDataManager: AchievementsRemoteDataManager!

    // MARK: Init

    init(cache: AchievementsCacheDataManager, remote: AchievementsRemoteDataManager) {
        self.cacheDataManager = cache
        self.remoteDataManager = remote
    }
}

// MARK: - AchievementsInteractorInput

extension AchievementsInteractor: AchievementsInteractorInput {

    func findAchievements() {
        guard let achievements = cacheDataManager.achievements() else {
            remoteDataManager.achievements { [weak self] achievements in
                guard let strongSelf = self else {
                    return
                }

                guard let achievements = achievements else {
                    strongSelf.output?.foundAchievements([])
                    return
                }

                strongSelf.output?.foundAchievements(achievements)
            }
            return
        }

        output?.foundAchievements(achievements)
    }
}
