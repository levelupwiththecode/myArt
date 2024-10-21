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
            Image(artwork.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
                .cornerRadius(10)

            Text(artwork.title)
                .font(.title)
                .padding()

            Text("Artiste: \(artwork.artist)")
                .font(.subheadline)
                .padding(.bottom, 5)

            Text("Année: \(artwork.year)")
                .font(.subheadline)
                .padding(.bottom, 10)

            Text(artwork.description)
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
