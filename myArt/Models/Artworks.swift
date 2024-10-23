//
//  Artworks.swift
//  myArt
//
//  Created by Massidé Dosso on 19/09/2024.
//

import Foundation

struct Artwork: Codable, Identifiable {
    let id: Int
    let title: String
    let artist: String
    let imageName: String
    let year: String
    let description: String
}


