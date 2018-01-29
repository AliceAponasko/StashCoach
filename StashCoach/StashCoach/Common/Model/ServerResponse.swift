//
//  ServerResponse.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation

struct ServerResponse: Codable {

    // MARK: Properties

    var success: Int
    var status: Int
    var overview: Overview
    var achievements: [Achievement]
}

class Overview: Codable {

    // MARK: Properties

    var title: String
}
