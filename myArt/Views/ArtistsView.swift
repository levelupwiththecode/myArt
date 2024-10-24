//
//  ArtistsView.swift
//  myArt
//
//  Created by Oriane Batteux on 21/10/2024.
//

import SwiftUI

struct ArtistsView: View {
    @StateObject private var viewModel = ArtistViewModel()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Artists")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(viewModel.artists) {
                        artist in NavigationLink(destination: ArtistDetailView(artist: artist)) {
                            VStack {
                                Image(artist.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 150, height: 150)
                                
                                HStack {
                                    Text(artist.firstname)
                                        .foregroundColor(Color.black)
                                    Text(artist.lastname)
                                        .foregroundColor(Color.black)
                                }
                            }
                        }
                    }
                }
            }
            
        }
    }
}
#Preview {
    ArtistsView()
}
