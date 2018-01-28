//
//  AchievementsInteractorIO.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation

protocol AchievementsInteractorInput: class {

    func findAchievements()
}

protocol AchievementsInteractorOutput: class {

    func foundAchievements(_ achievements: [Achievement])
}
