//
//  ProfileModel.swift
//  ClonningSpotify
//
//  Created by Arif Rahman Sidik on 09/01/23.
//

import Foundation

struct UserProfileModel: Codable {
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
    let id: String
    let product: String
    let images: [APIImageModel]
}

