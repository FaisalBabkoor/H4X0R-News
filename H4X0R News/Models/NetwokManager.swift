//
//  NetwokManager.swift
//  H4X0R News
//
//  Created by Faisal Babkoor on 3/12/20.
//  Copyright © 2020 Faisal Babkoor. All rights reserved.
//

import Foundation

class NetwokManager: ObservableObject {
    @Published var posts = [Post]()
    func fetchData() {
        guard let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") else { debugPrint("Invalid URL"); return }
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            guard error == nil else { debugPrint(error!.localizedDescription); return }
            guard let data = data else { debugPrint(error!.localizedDescription); return }
            let decoder = JSONDecoder()
            do {
                let results = try decoder.decode(PostData.self, from: data)
                DispatchQueue.main.async {
                    self.posts = results.hits
                }
            } catch {
                debugPrint(error.localizedDescription)
            }
        }
        
        task.resume()
    }
}
