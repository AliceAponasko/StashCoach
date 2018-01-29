//
//  AchievementCell.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import UIKit

class AchievementCell: UITableViewCell {

    // MARK: Constants

    static let cellId = "AchievementCell"
    static let cellHeight: CGFloat = 240.0

    // MARK: Outlets

    @IBOutlet weak var backgroundImage: UIImageView!
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var currentPointsLabel: UILabel!
    @IBOutlet weak var maxPointsLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!

    // MARK: Properties

    var achievement: Achievement? {
        didSet {
            guard let achievement = achievement else {
                return
            }

            backgroundImage.downloadImage(from: achievement.imageUrl)
            levelLabel.text = "\(achievement.level)"
            currentPointsLabel.text = "\(achievement.progress)\(Const.Achievement.pointsText)"
            maxPointsLabel.text = "\(achievement.total)\(Const.Achievement.pointsText)"
            progressBar.setProgress(
                Float(achievement.progress) / Float(achievement.total),
                animated: true)
        }
    }

    // MARK: Init

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
