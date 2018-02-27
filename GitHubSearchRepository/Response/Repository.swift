//
//  Repository.swift
//  GitHubSearchRepository
//
//  Created by mzgk on 2018/02/27.
//  Copyright © 2018年 mzgk. All rights reserved.
//

import Foundation

struct Repository: Decodable {
    let id: Int
    let name: String
    let fullName: String
    let owner: User

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case owner
    }
}
