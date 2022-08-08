//
//  Feature.swift
//  AppStore
//
//  Created by Yujean Cho on 2022/07/26.
//

import Foundation

struct Feature: Decodable {
    let type: String
    let appName: String
    let description: String
    let imageURL: String
}
