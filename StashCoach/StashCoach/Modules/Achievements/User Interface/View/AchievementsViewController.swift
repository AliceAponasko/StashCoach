//
//  AchievementsViewController.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import UIKit

class AchievementsViewController: UIViewController {

    // MARK: Outlets

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var noContentView: UIView!
    @IBOutlet var achievementsTableView: UITableView!

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        contentView.bringSubview(toFront: noContentView)
    }

    // MARK: Appearance

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

// MARK: - AchievementLoadable

extension AchievementsViewController: AchievementLoadable {

    func showAchievements() {
        contentView.bringSubview(toFront: achievementsTableView)
    }

    func showNoContentMessage() {
        contentView.bringSubview(toFront: noContentView)
    }

    func reloadAchievements() {

    }
}
