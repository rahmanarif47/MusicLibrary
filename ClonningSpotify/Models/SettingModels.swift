//
//  SettingModels.swift
//  ClonningSpotify
//
//  Created by Arif Rahman Sidik on 12/01/23.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
