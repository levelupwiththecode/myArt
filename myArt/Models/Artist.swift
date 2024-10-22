//
//  Artist.swift
//  myArt
//
//  Created by Oriane Batteux on 21/10/2024.
//

import Foundation

struct Artist: Identifiable {
    let id: Int
    let lastname: String
    let firstname: String
    let birthdate: String
  //  let birthdeath: Date
    let artistAlive: Bool
    let artisticMovement: String
    let biography: String
    let image: String
}
