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

    var dataManager: AchievementsDataManager!

    // MARK: Init

    init(dataManager: AchievementsDataManager) {
        self.dataManager = dataManager
    }
}

// MARK: - AchievementsInteractorInput

extension AchievementsInteractor: AchievementsInteractorInput {

    func findAchievements() {
        guard let achievements = dataManager.achievements() else {
            output?.foundAchievements([])
            return
        }

        output?.foundAchievements(achievements)
    }
}
