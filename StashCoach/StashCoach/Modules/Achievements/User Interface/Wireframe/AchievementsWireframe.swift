//
//  AchievementsWireframe.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import UIKit

class AchievementsWireframe {

    // MARK: Properties

    var rootWireframe: RootWireframe?
    var achievementsPresenter: AchievementsPresenter?
    var viewController: AchievementsViewController?

    func showAchievementsInterface(in window: UIWindow) {
        guard let achievementsVC = achievementsFromStoryboard() else {
            return
        }

        achievementsVC.eventHandler = achievementsPresenter
        achievementsPresenter?.userInterface = achievementsVC
        viewController = achievementsVC

        rootWireframe?.showRootViewController(achievementsVC, in: window)
    }

    private func achievementsFromStoryboard() -> AchievementsViewController? {
        let storyboard = mainStoryboard()

        guard let viewController = storyboard?.instantiateViewController(
            withIdentifier: AchievementsViewController.viewControllerId)
            as? AchievementsViewController else {
                return nil
        }

        return viewController
    }

    private func mainStoryboard() -> UIStoryboard? {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
