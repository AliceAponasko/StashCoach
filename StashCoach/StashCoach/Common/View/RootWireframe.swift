//
//  RootWireframe.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import UIKit

class RootWireframe {

    func showRootViewController(
        _ vc: UIViewController,
        in window: UIWindow) {

        let nc = navigationController(from: window)
        nc?.viewControllers = [vc]
    }

    private func navigationController(
        from window: UIWindow) -> UINavigationController? {

        return window.rootViewController as? UINavigationController
    }
}
