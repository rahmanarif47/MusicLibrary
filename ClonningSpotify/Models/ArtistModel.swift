//
//  ArtistModel.swift
//  ClonningSpotify
//
//  Created by Arif Rahman Sidik on 09/01/23.
//

import Foundation

struct Artist: Codable {
    let external_urls: [String: String]
    let id: String
    let name: String
    let type: String
}
