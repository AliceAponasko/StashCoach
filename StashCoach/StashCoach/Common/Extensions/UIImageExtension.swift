//
//  UIImageExtension.swift
//  StashCoach
//
//  Created by Alice Aponasko on 1/28/18.
//  Copyright © 2018 aliceaponasko. All rights reserved.
//

import UIKit

extension UIImageView {

    func downloadImage(from urlString: String) {
        guard let url = URL(string: urlString) else {
            return
        }

        getDataFromUrl(url: url) { data, response, error in
            guard let data = data, error == nil else {
                return
            }

            DispatchQueue.main.async() { [weak self] in
                self?.image = UIImage(data: data)
            }
        }
    }

    func getDataFromUrl(
        url: URL,
        completion: @escaping (Data?, URLResponse?, Error?) -> ()) {
        URLSession.shared.dataTask(with: url) { data, response, error in
            completion(data, response, error)
            }.resume()
    }
}
