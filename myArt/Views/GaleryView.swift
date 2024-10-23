//
//  ContentView.swift
//  myArt
//
//  Created by Massidé Dosso on 19/09/2024.
//

import SwiftUI


struct GalleryView: View {
    @StateObject private var viewmodel = ArtworksViewModel()
    
    
    var layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
       
    ]
        
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout, spacing: 20) {
                    ForEach(viewmodel.artworks) { artwork in
                        NavigationLink(destination: ArtworkDetailView(artwork: artwork)) {
                            VStack {
                                
                                    Image(artwork.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 150, height: 150)
                                    
                                        .clipped()
                                    

                                
                                
                                Text(artwork.title)
                                    .foregroundColor(Color.black)
                            }
                        }
                    }
                    }
                }
            .navigationTitle("Gallerie d'art")
          //  .onAppear {
           //     viewmodel.fetchArtworks()
           // }
            }
        }
    }
    
    

#Preview {
    GalleryView()
}


