//
//  AuthResponse.swift
//  ClonningSpotify
//
//  Created by Arif Rahman Sidik on 10/01/23.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    let scope: String
    let token_type: String
}
