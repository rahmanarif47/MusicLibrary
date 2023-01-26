//
//  NewReleasesResponse.swift
//  ClonningSpotify
//
//  Created by Arif Rahman Sidik on 16/01/23.
//

import Foundation

struct NewReleasesResponse: Codable {
    let albums: AlbumResponse
}

struct AlbumResponse: Codable {
    let items: [Album]
}

struct Album: Codable {
    let album_type: String
    let available_markets: [String]
    let id: String
    let images: [APIImageModel]
    let name: String
    let release_date: String
    let total_tracks: Int
    let artists: [Artist]
}

