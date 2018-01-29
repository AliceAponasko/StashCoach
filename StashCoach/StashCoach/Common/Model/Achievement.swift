//
//  Achievement.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation

struct Achievement: Codable {

    // MARK: Coder Key

    enum CodingKeys: String, CodingKey {
        case id
        case level
        case progress
        case total
        case imageUrl = "bg_image_url"
        case accessible
    }

    // MARK: Properties

    var id: Int
    var level: String
    var progress: Int
    var total: Int
    var imageUrl: String
    var accessible: Int

    // MARK: Helpers

    func imageCacheId() -> String {
        return "achievement\(id)"
    }
}

func == (lhs: Achievement, rhs: Achievement) -> Bool {
    return lhs.id == rhs.id
}
