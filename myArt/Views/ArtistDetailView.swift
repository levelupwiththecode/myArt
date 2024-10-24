//
//  ArtistDetailView.swift
//  myArt
//
//  Created by Oriane Batteux on 23/10/2024.
//

import SwiftUI

struct ArtistDetailView: View {
    
    var artist: Artist
    
    var body: some View {
            VStack {
                Image(artist.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 300)
                    .cornerRadius(10)
                
                HStack {
                Text(artist.firstname)
                    Text(artist.lastname)
                }
                .padding()
                
                Text("Birthdate: \(artist.birthdate)")
                    .font(.subheadline)
                    .padding(.bottom, 10)
                
                Text("Artistic movement: \(artist.artisticMovement)")
                    .padding()
                
                Text(artist.biography)
                    .padding()
                
                Spacer()
            }
        }
    }
