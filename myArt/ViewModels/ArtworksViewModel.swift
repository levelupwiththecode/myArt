//
//  ArtworksViewModel.swift
//  myArt
//
//  Created by Massidé Dosso on 19/09/2024.
//

import Foundation


    
    
class ArtworksViewModel: ObservableObject {
    @Published var artworks: [Artwork] = []
    
    func fetchArtworks() {
        guard let url = URL(string: "http://127.0.0.1:8080/Artworks") else {
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
}


