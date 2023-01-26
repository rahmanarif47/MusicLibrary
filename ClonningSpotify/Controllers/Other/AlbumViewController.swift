//
//  AlbumViewController.swift
//  ClonningSpotify
//
//  Created by Arif Rahman Sidik on 25/01/23.
//

import UIKit

class AlbumViewController: UIViewController {
    
    private let album: Album
    
    init(album: Album) {
        self.album = album
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder : NSCoder) {
        fatalError()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Album"
        view.backgroundColor = .systemBackground
    }
}
