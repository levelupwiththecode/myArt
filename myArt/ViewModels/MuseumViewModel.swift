//
//  MuseumViewModel.swift
//  myArt
//
//  Created by Apprenant 163 on 21/10/2024.
//

import Foundation

class MuseumViewModel: ObservableObject
{
    @Published var museums:[Museum] = []
    
    func fetchMuseums()
    {
        guard let url = URL(string: "http://127.0.0.1:8080/Museums") else
        {
            print("Invalid URL")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedMuseum = try JSONDecoder().decode([Museum].self, from: data)
                    DispatchQueue.main.async {
                        self.museums = decodedMuseum
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            } else if let error = error {
                print("Error fetching data: \(error)")
            }
        }.resume()
    }
    
    
}
