//
//  ArtworkDetailView.swift
//  myArt
//
//  Created by Massidé Dosso on 18/10/2024.
//

import SwiftUI

struct ArtworkDetailView: View {
    
    var artwork: Artwork
    
    var body: some View {
        VStack {
            Image(artwork.imageArt)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
                .cornerRadius(10)

            Text(artwork.nameArt)
                .font(.title)
                .padding()

            Text("Artiste: \(artwork.nameArtistArt)")
                .font(.subheadline)
                .padding(.bottom, 5)

            Text("Année: \(artwork.dateArt)")
                .font(.subheadline)
                .padding(.bottom, 10)

            Text(artwork.descriptionArt)
                .padding()

            Spacer()
        }
        
        NavigationLink(destination: ARView(artwork: artwork)) {
            Text("Voir en AR")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(15)
        }
        .padding()
        
    }
}

/*
#Preview {
    ArtworkDetailView()
}

*/

