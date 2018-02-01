//
//  AchievementsRemoteDataManager.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import Foundation

class AchievementsRemoteDataManager {

    // MARK: Properties

    var cache: CacheStore?
    var path = Bundle.main.path(forResource: "achievements", ofType: "json")

    // MARK: Fetch

    func achievements(completion: @escaping ([Achievement]?) -> Void) {
        guard let path = path else {
            completion(nil)
            return
        }

        let decoder = JSONDecoder()
        do {
            let jsonData = try NSData(contentsOfFile: path) as Data

            let serverResponse = try decoder.decode(
                ServerResponse.self,
                from: jsonData)

            cache?.setAchievements(serverResponse.achievements)
            completion(serverResponse.achievements)
            return
        } catch {
            completion(nil)
            return
        }
    }
}
