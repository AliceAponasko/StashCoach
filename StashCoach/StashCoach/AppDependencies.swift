//
//  AppDependencies.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import UIKit

class AppDependencies {

    // MARK: Properties

    var achievementsWireframe: AchievementsWireframe?

    // MARK: Init

    init() {
        configure()
    }

    private func configure() {
        // Root Level
        let cache = CacheStore()
        let rootWireframe = RootWireframe()

        // Achievements Module
        let achievementsWireframe = AchievementsWireframe()
        let achievementsPresenter = AchievementsPresenter()
        let achievementsCacheDataManager = AchievementsCacheDataManager()
        let achievementsRemoteDataManager = AchievementsRemoteDataManager()
        let achievementsInteractor = AchievementsInteractor(
            cache: achievementsCacheDataManager,
            remote: achievementsRemoteDataManager)
        
        achievementsInteractor.output = achievementsPresenter
        achievementsPresenter.achievementInteractor = achievementsInteractor

        achievementsWireframe.achievementsPresenter = achievementsPresenter
        achievementsWireframe.rootWireframe = rootWireframe

        self.achievementsWireframe = achievementsWireframe

        achievementsCacheDataManager.cache = cache
        achievementsRemoteDataManager.cache = cache
    }

    // MARK: Helpers

    func showRootVC(in window: UIWindow) {
        achievementsWireframe?.showAchievementsInterface(in: window)
    }
}
