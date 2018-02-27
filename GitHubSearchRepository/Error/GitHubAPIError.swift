//
//  GitHubAPIError.swift
//  GitHubSearchRepository
//
//  Created by mzgk on 2018/02/27.
//  Copyright © 2018年 mzgk. All rights reserved.
//

import Foundation

struct GitHubAPIError: Decodable, Error {
    struct FieldError: Decodable {
        let resource: String
        let field: String
        let code: String
    }

    let message: String
    let fieldErrors: [FieldError]
}
