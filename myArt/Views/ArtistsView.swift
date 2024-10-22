//
//  ArtistsView.swift
//  myArt
//
//  Created by Oriane Batteux on 21/10/2024.
//

import SwiftUI

struct SwiftUIView: View {
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
                        artist in
                        
                        VStack {
                            Image(artist.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 150)
                            
                            HStack {
                                Text(artist.firstname)
                                Text(artist.lastname)
                            }
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    SwiftUIView()
}
