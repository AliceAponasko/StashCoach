//
//  AchievementsViewController.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import UIKit

class AchievementsViewController: UIViewController {

    // MARK: Delegate

    weak var eventHandler: AchievementUpdatable?

    // MARK: Outlets

    @IBOutlet weak var contentView: UIView!
    @IBOutlet var noContentView: UIView!
    @IBOutlet var achievementsTableView: UITableView!

    // MARK: Constants

    static let viewControllerId = "AchievementsViewController"

    // MARK: Properties

    var achievements: [Achievement]!

    // MARK: Lifecycle

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        eventHandler?.updateView()
    }

    // MARK: Actions

    @IBAction func didTapBackButton(_ sender: Any) {
        // TODO:
    }

    @IBAction func didTapInfoButton(_ sender: Any) {
        // TODO:
    }
}

// MARK: - AchievementLoadable

extension AchievementsViewController: AchievementLoadable {

    func showAchievements(_ achievements: [Achievement]) {
        self.achievements = achievements
        view = achievementsTableView
        reloadAchievements()
    }

    func showNoContentMessage() {
        view = noContentView
    }

    func reloadAchievements() {
        achievementsTableView.reloadData()
    }
}

// MARK: - UITableViewDelegate

extension AchievementsViewController: UITableViewDelegate {

    func tableView(
        _ tableView: UITableView,
        heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 250.0
    }

    func tableView(
        _ tableView: UITableView,
        didSelectRowAt indexPath: IndexPath) {
        // TODO:
    }
}

// MARK: - UITableViewDataSource

extension AchievementsViewController: UITableViewDataSource {

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(
        _ tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int {
        return achievements.count
    }

    func tableView(
        _ tableView: UITableView,
        cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: AchievementCell.cellId,
            for: indexPath) as? AchievementCell else {
                return UITableViewCell()
        }

        let achievement = achievements[indexPath.row]

        cell.achievement = achievement

        return cell
    }
}
