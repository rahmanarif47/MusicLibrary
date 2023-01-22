//
//  AudioTrackModel.swift
//  ClonningSpotify
//
//  Created by Arif Rahman Sidik on 09/01/23.
//

import Foundation

struct AudioTrackModel : Codable {
    let album: Album
    let artists: [Artist]
    let available_markets: [String]
    let disc_number: Int
    let duration_ms: Int
    let explicit: Bool
    let external_urls : [String: String]
    let id: String
    let name: String
    let popularity: Int
}

