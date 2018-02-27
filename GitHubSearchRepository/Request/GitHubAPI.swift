//
//  GitHubAPI.swift
//  GitHubSearchRepository
//
//  Created by mzgk on 2018/02/27.
//  Copyright © 2018年 mzgk. All rights reserved.
//

import Foundation

final class GitHubAPI {
    struct SearchRepositories: GitHubRequest {
        let keyword: String

        // GitHubRequestが要求する連想型
        typealias Response = SearchResponse<Repository>

        var method: HTTPMethod {
            return .get
        }

        var path: String {
            return "/search/repositories"
        }

        var queryItems: [URLQueryItem] {
            return [URLQueryItem(name: "q", value: keyword)]
        }
    }
}
