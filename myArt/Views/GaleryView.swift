//
//  ContentView.swift
//  myArt
//
//  Created by Massidé Dosso on 19/09/2024.
//

import SwiftUI

struct GalleryView: View {
    @StateObject private var viewmodel = ArtworksViewModel()
    
 /*   var layout = [ GridItem(.fixed(80)),
                   GridItem(.fixed(80)),
                   GridItem(.fixed(80))
                   ]
  */
    
    var layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
       // GridItem(.flexible())
    ]
        
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
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
                }
            .navigationTitle("Gallerie d'art")
            }
        }
    }
    
    

#Preview {
    GalleryView()
}

