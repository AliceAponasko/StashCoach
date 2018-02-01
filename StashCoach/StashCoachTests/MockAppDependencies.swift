//
//  MockAppDependencies.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import UIKit
@testable import StashCoach

class MockAppDependencies: AppDependencies {

    var didShowRootVC = false

    override func showRootVC(in window: UIWindow) {
        didShowRootVC = true
    }
}
