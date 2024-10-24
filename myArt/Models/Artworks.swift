//
//  Artworks.swift
//  myArt
//
//  Created by Massidé Dosso on 19/09/2024.
//

import Foundation

struct Artwork: Codable, Identifiable {
    let id: UUID?
    let nameArt: String
    let nameArtistArt: String
    let descriptionArt: String
    let imageArt: String
    let dateArt: String
    let courantArtistiqueArt: String

}


