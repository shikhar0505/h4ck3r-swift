//
//  NetworkManager.swift
//  H4CK3R
//
//  Created by Shikhar Kumar on 2/2/20.
//  Copyright © 2020 Shikhar Kumar. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    
    @Published var hits = [Hit]()

    func fetchLatestNews() {
        if let url = URL(string: "https://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results = try decoder.decode(Hits.self, from: safeData).hits
                            DispatchQueue.main.async {
                                self.hits = results
                            }
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
    }
}
