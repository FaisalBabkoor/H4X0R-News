//
//  Post.swift
//  H4X0R News
//
//  Created by Faisal Babkoor on 3/12/20.
//  Copyright © 2020 Faisal Babkoor. All rights reserved.
//

import Foundation

struct Post: Codable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let points: Int
    let url: String?
}

struct PostData: Codable {
    let hits: [Post]
}
