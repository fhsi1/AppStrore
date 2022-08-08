//
//  RankingFeature.swift
//  AppStore
//
//  Created by Yujean Cho on 2022/07/26.
//

import Foundation

struct RankingFeature: Decodable {
    let title: String
    let description: String
    let isInPurchaseApp: Bool
}
