//
//  GalleryTestView.swift
//  myArt
//
//  Created by Massidé Dosso on 17/10/2024.
//

import SwiftUI


struct Artwork: Identifiable {
    let id: String
    let title: String
    let artist: String
    let imageName: String
    let year: String
    let description: String
}


struct GalleryTestView: View {
    
    let layout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        
          ]
    
    var artworks = [
            Artwork(id: "2932996B-789C-49EA-BAD1-4411ACC9A4BC", title: "La Joconde", artist: "Léonard de Vinci", imageName: "mona_lisa", year: "1503", description: "Un des tableaux les plus célèbres du monde."),
            Artwork(id: "2932996B-789C-49EA-DAB1-4411ACC9A4BC", title: "Nuit étoilée", artist: "Vincent van Gogh", imageName: "starrynight", year: "1888", description: "Dès son arrivée à Arles, le 8 février 1888, la représentation des “effets de nuit“ constitue une préoccupation constante pour Van Gogh."),
            Artwork(id: "2DE80E91-EE03-4A8D-9C32-97BBE6E8AB7E", title: "Les Tournesols", artist: "Vincent van Gogh", imageName: "sunflowers", year: "1888", description: "Un exemple d'une des œuvres iconiques de Van Gogh."),
            Artwork(id: "2DE80E76-EE03-4A8D-9C32-97BBE6E8AB7E", title: "Bloom", artist: "Julia Fish", imageName: "bloom", year: "1989", description: "In Bloom, an intimate and intense early work, Fish describes what might be read as vegetation in magenta, lavender, and deep green passages of paint that appear at once to hover above and recede into the pictorial plane. There is no evident light source, yet the painting as a whole seems to glow, as if backlit. More than a particular kind of bloom, this work captures the experience of seeing—or of straining to see—garden forms in twilight. Fish constructed a sense of fading, fluctuation, and ultimate visual instability through repeated horizontal and vertical brush marks. Progressive layers of point generated a lush, tactile surface that seems to behave organically rather than predictably.")
        ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                
                LazyVGrid(columns: layout, spacing: 10) {
                    ForEach(artworks) { artwork in NavigationLink(destination: ArtworkDetailView(artwork: artwork))  {
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
                
               
                /*
                    ForEach(artworks) { artwork in
                        NavigationLink(destination: ArtworkDetailView(artwork: artwork)) {
                            VStack {
                                Image(artwork.imageName)
                                    .resizable()
                                    .scaledToFit()
                                Text(artwork.title)
                                    .font(.title)
                                    .foregroundColor(Color.black)
                            }

                        }
                    }
                .padding() */
            }
            .navigationTitle("Galerie d'Art")
        }
    }
}

#Preview {
    GalleryTestView()
}

