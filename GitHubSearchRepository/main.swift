//
//  main.swift
//  GitHubSearchRepository
//
//  Created by mzgk on 2018/02/27.
//  Copyright © 2018年 mzgk. All rights reserved.
//

import Foundation

print("Enter your query here> ", terminator: "")

// 入力された検索クエリの取得
guard let keyword = readLine(strippingNewline: true) else {
    exit(1)
}

// APIクライアントの生成
let client = GitHubClient()

// リクエストの発行
let request = GitHubAPI.SearchRepositories(keyword: keyword)

// リクエストの送信
client.send(request: request) { (result) in
    switch result {
    case let .success(response):
        for item in response.items {
            // リポジトリの所有者と名前を出力
            print(item.owner.login + "/" + item.name)
        }
        exit(0)
    case let .failure(error):
        // エラー詳細を出力
        print(error)
        exit(1)
    }
}

// タイムアウト時間
let timeoutInterval: TimeInterval = 60

// タイムアウトまでメインスレッドを停止
Thread.sleep(forTimeInterval: timeoutInterval)

// タイムアウト後の処理
print("Commection timeout")
exit(1)
