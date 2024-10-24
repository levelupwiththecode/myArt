//
//  HomePage.swift
//  artUnbound
//
//  Created by Apprenant 163 on 18/10/2024.
//

import SwiftUI

struct HomePage: View {
    
    @StateObject var viewModelMuseum = MuseumViewModel()
    @StateObject var viewModelArtwork = ArtworksViewModel()
    @StateObject var viewModelArtist =  ArtistViewModel()
    
    var body: some View {
        
      
        
        NavigationStack
        {
            Text("Home Page")
                //.font(.largeTitle)
                .font(.system(size: 50))
            
            VStack(spacing: 20)
            {
                HStack
                {
                    TextField("  Search", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                        .frame(width :300,height: 30)
                        .overlay
                    {
                        RoundedRectangle(cornerRadius: 40)
                            .stroke(Color.black,lineWidth: 2)
                    }
                    /*NavigationLink(destination: FilterView())
                    {
                        Text("Filter")
                            .frame(width :60,height: 30)
                    }*/
                }
                
                //Discover Museums
                VStack(alignment : .leading)
                {
                    Text("Discover Galleries")
                        .font(.title)
                        .padding(5)
                    ScrollView(.horizontal)
                    {
                        HStack
                        {
                            ForEach(viewModelMuseum.museums){ museum in
                                NavigationLink(destination: DetailMuseumView(museum: museum))
                                {
                                    //remplacer par des images
                                    Image(museum.imageMusee)
                                        .resizable()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .frame(width: 125,height:125)
                                        
                                }
                            }
                        }
                    }
                    .onAppear{viewModelMuseum.fetchMuseums()}
                    .contentMargins(10, for: .scrollContent)
                }
                
                //Discover Art
                VStack(alignment : .leading)
                {
                    Text("Discover Art")
                        .font(.title)
                        .padding(5)
                    ScrollView(.horizontal)
                    {
                        HStack
                        {
                            ForEach(viewModelArtwork.artworks){ art in
                                NavigationLink(destination: ArtworkDetailView(artwork: art))
                                {
                                    
                                    //remplacer par des images
                                    Image(art.imageArt)
                                        .resizable()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .frame(width: 125,height:125)
                                }
                            }
                        }
                    }
                    .onAppear{viewModelArtwork.fetchArtworks()}
                    .contentMargins(10, for: .scrollContent)
                }
                
                //Discover Artist
                VStack(alignment : .leading)
                {
                    Text("Discover Artist")
                        .font(.title)
                        .padding(5)
                    ScrollView(.horizontal)
                    {
                        HStack
                        {
                            ForEach(viewModelArtist.artists){ artist in
                                NavigationLink(destination:DetailArtistsView(artists:artist ))
                                {
                                    //remplacer par des images
                                    Image(artist.image)
                                        .resizable()
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .frame(width: 125,height:125)
                                }
                            }
                        }
                    }
                    .contentMargins(10, for: .scrollContent)
                }
                
                
            }
        }
        
    }
}

#Preview {
    HomePage()
}
