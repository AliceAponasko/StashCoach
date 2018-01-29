//
//  AchievementsPresenter.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import UIKit

class AchievementsPresenter {

    // MARK: Delegate

    weak var achievementInteractor: AchievementsInteractorInput?
    weak var userInterface: AchievementLoadable?
}

extension AchievementsPresenter: AchievementsInteractorOutput {

    func foundAchievements(_ achievements: [Achievement]) {
        if achievements.count == 0 {
            userInterface?.showNoContentMessage()
        } else {
            userInterface?.showAchievements(achievements)
        }
    }
}

extension AchievementsPresenter: AchievementUpdatable {

    func updateView() {
        achievementInteractor?.findAchievements()
    }
}
