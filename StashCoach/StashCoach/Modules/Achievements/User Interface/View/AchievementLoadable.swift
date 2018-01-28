//
//  AchievementLoadable.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation

protocol AchievementLoadable: class {

    func showNoContentMessage()
    func showAchievements()
    func reloadAchievements()
}
