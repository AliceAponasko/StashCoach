//
//  MockRootWireframe.swift
//  StashCoachTests
//
//  Created by Alice Aponasko on 2/1/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import UIKit
@testable import StashCoach

class MockRootWireframe: RootWireframe {

    var shownViewController: UIViewController?

    override func showRootViewController(_ vc: UIViewController, in window: UIWindow) {
        shownViewController = vc
    }
}
