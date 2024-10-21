//
//  ContentView.swift
//  myArt
//
//  Created by Massidé Dosso on 19/09/2024.
//

import SwiftUI


struct GalleryView: View {
    @StateObject private var viewmodel = ArtworksViewModel()
        
    var body: some View {
        NavigationView {
            ScrollView {
               
                ForEach(viewmodel.artworks) { artwork in
                    NavigationLink(destination: ArtworkDetailView(artwork: artwork)) {
                    VStack {
                        
                        GeometryReader { geometry in
                            Image(artwork.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: geometry.size.width, height: geometry.size.height)
                            
                                .clipped()

                        }
                        .aspectRatio(1, contentMode: .fit)
                        
                        
                        Text(artwork.title)
                            .font(.title)
                            .foregroundColor(Color.black)
                    }
                }
                }

                    }
                .padding()
                .navigationTitle("Galerie d'Art")

            }
        }
    
}

    
    

#Preview {
    GalleryView()
}

