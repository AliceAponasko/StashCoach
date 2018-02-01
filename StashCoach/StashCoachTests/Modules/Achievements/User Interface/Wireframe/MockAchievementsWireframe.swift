//
//  MockAchievementsWireframe.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation
import UIKit
@testable import StashCoach

class MockAchievementsWireframe: AchievementsWireframe {

    var didShowAchievementsInterface = false

    override init() { }

    override func showAchievementsInterface(in window: UIWindow) {
        didShowAchievementsInterface = true
    }
}
