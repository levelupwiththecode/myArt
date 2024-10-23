//
//  ContentView.swift
//  myArt
//
//  Created by Massidé Dosso on 19/09/2024.
//

import SwiftUI


struct GalleryView: View {
    @StateObject private var viewModel = ArtworksViewModel()
    
    
    var layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
       
    ]
        
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(viewModel.artworks) { artwork in
                        NavigationLink(destination: ArtworkDetailView(artwork: artwork)) {
                            VStack {
                                Image(artwork.imageArt)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: 150)
                                        .clipped()
                                Text(artwork.nameArt)
                                    .foregroundColor(Color.black)
                            }
                            .padding()
                        }
                    }
                    }
                }
            .navigationTitle("Gallerie d'art")
            .onAppear {
                viewModel.fetchArtworks()
            }
            }
        
            }
    }
    
    

#Preview {
    GalleryView()
}


