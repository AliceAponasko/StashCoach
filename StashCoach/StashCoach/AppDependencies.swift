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
        let achievementsDataManager = AchievementsDataManager()
        let achievementsInteractor = AchievementsInteractor(
            dataManager: achievementsDataManager)
        
        achievementsInteractor.output = achievementsPresenter
        achievementsPresenter.achievementInteractor = achievementsInteractor

        achievementsWireframe.achievementsPresenter = achievementsPresenter
        achievementsWireframe.rootWireframe = rootWireframe

        self.achievementsWireframe = achievementsWireframe

        achievementsDataManager.cache = cache
    }

    // MARK: Helpers

    func showRootVC(in widnow: UIWindow) {
        achievementsWireframe?.showAchievementsInterface(in: widnow)
    }
}
