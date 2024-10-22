//
//  ArtworksViewModel.swift
//  myArt
//
//  Created by Massidé Dosso on 19/09/2024.
//

import Foundation

class ArtworksViewModel: ObservableObject {
 /*   @Published var artworks: [Artwork] = []
    
    func fetchArtworks() {
        guard let url = URL(string: "http://192.168.1.x:8080/artworks") else {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedArtworks = try JSONDecoder().decode([Artwork].self, from: data)
                    DispatchQueue.main.async {
                        self.artworks = decodedArtworks
                    }
                }
                catch {
                    print("Error decoding data \(error)")
                }
            }  else if let error = error {
                    print("Error fetching data \(error)")

                }
        }.resume()
            
        }
        */
    
    
   @Published var artworks: [Artwork] = [
            Artwork(id: 1, title: "La Joconde", artist: "Léonard de Vinci", imageName: "mona_lisa", year: "1503", description: "Un des tableaux les plus célèbres du monde."),
            Artwork(id: 2, title: "Les Tournesols", artist: "Vincent van Gogh", imageName: "sunflowers", year: "1888", description: "Un exemple d'une des œuvres iconiques de Van Gogh."),
            Artwork(id: 3, title: "Bloom", artist: "Julia Fish", imageName: "bloom", year: "1989", description: "In Bloom, an intimate and intense early work, Fish describes what might be read as vegetation in magenta, lavender, and deep green passages of paint that appear at once to hover above and recede into the pictorial plane. There is no evident light source, yet the painting as a whole seems to glow, as if backlit. More than a particular kind of bloom, this work captures the experience of seeing—or of straining to see—garden forms in twilight. Fish constructed a sense of fading, fluctuation, and ultimate visual instability through repeated horizontal and vertical brush marks. Progressive layers of point generated a lush, tactile surface that seems to behave organically rather than predictably."),
            Artwork(id: 4, title: "Nuit étoilée", artist: "Vincent van Gogh", imageName: "starrynight", year: "1888", description: "Dès son arrivée à Arles, le 8 février 1888, la représentation des “effets de nuit“ constitue une préoccupation constante pour Van Gogh.")
        ]

    
    
}



