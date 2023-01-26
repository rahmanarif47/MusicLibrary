//
//  FeaturePlaylistResponse.swift
//  ClonningSpotify
//
//  Created by Arif Rahman Sidik on 16/01/23.
//

import Foundation

struct FeaturePlaylistResponse: Codable {
    let playlists: PlaylistResponse
}

struct PlaylistResponse: Codable {
    let items: [Playlist]
}

struct Playlist: Codable {
    let description: String
    let external_urls: [String: String]
    let id: String
    let images: [APIImageModel]
    let name: String
    let owner: User
}

struct User: Codable {
    let display_name: String
    let external_urls: [String:String]
    let id: String
}
