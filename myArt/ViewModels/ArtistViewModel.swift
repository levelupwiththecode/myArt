//
//  ArtistViewModel.swift
//  myArt
//
//  Created by Oriane Batteux on 21/10/2024.
//

import Foundation

class ArtistViewModel: ObservableObject {
    
    @Published var artists: [Artist] = [
        Artist(id: 1, lastname: "De vinci", firstname: "Leonard", birthdate: "16/10/1865", artistAlive: false, artisticMovement: "Impressionism", biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et enim lacus. Phasellus eget dignissim lacus. Nam in euismod eros. Fusce efficitur pharetra diam porttitor tempus. Mauris vitae nisi volutpat, accumsan velit a, condimentum ex. Nam eu dolor non erat vestibulum lacinia. Donec tempus quis tellus ac finibus. Donec eu nisl convallis, pharetra nisl id, tristique est. Donec viverra et lectus vel pretium.", image: "devinci.jpg"),
        Artist(id: 2, lastname: "Matisse", firstname: "Henri", birthdate: "16/10/1865", artistAlive: false, artisticMovement: "Impressionism", biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et enim lacus. Phasellus eget dignissim lacus. Nam in euismod eros. Fusce efficitur pharetra diam porttitor tempus. Mauris vitae nisi volutpat, accumsan velit a, condimentum ex. Nam eu dolor non erat vestibulum lacinia. Donec tempus quis tellus ac finibus. Donec eu nisl convallis, pharetra nisl id, tristique est. Donec viverra et lectus vel pretium.", image: "matisse.jpg"),
        Artist(id: 3, lastname: "Picasso", firstname: "Pablo", birthdate: "16/10/1865", artistAlive: false, artisticMovement: "Impressionism", biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et enim lacus. Phasellus eget dignissim lacus. Nam in euismod eros. Fusce efficitur pharetra diam porttitor tempus. Mauris vitae nisi volutpat, accumsan velit a, condimentum ex. Nam eu dolor non erat vestibulum lacinia. Donec tempus quis tellus ac finibus. Donec eu nisl convallis, pharetra nisl id, tristique est. Donec viverra et lectus vel pretium.", image: "picasso.jpg"),
        Artist(id: 4, lastname: "Kusama", firstname: "Yayoi", birthdate: "16/10/1865", artistAlive: false, artisticMovement: "Impressionism", biography: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut et enim lacus. Phasellus eget dignissim lacus. Nam in euismod eros. Fusce efficitur pharetra diam porttitor tempus. Mauris vitae nisi volutpat, accumsan velit a, condimentum ex. Nam eu dolor non erat vestibulum lacinia. Donec tempus quis tellus ac finibus. Donec eu nisl convallis, pharetra nisl id, tristique est. Donec viverra et lectus vel pretium.", image: "kusama.jpg")
    ]
}
