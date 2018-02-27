//
//  SearchResponse.swift
//  GitHubSearchRepository
//
//  Created by mzgk on 2018/02/27.
//  Copyright © 2018年 mzgk. All rights reserved.
//

import Foundation

struct SearchResponse<Item: Decodable>: Decodable {
    let totalCount: Int
    let items: [Item]

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
