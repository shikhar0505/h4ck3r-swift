//
//  Post.swift
//  H4CK3R
//
//  Created by Shikhar Kumar on 2/2/20.
//  Copyright © 2020 Shikhar Kumar. All rights reserved.
//

import Foundation

struct Hits: Decodable {
    let hits: [Hit]
}

struct Hit: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let objectID: String
    let title: String
    let url: String?
    let points: Int
}
