//
//  TabBar.swift
//  myArt
//
//  Created by Apprenant 163 on 23/10/2024.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            
            /*HomePage()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }*/
            
            SwiftUIView()
                .tabItem {
                    Label("Artist", systemImage: "person.3.fill")
                }
            
            GalleryView()
                .tabItem {
                    Label("Art", systemImage: "square.and.pencil")
                }
            
            DiscoverMuseumView()
                .tabItem {
                    Label("Museum", systemImage: "square.and.pencil")
                }
            
            
           
        
        }
       
    }
}

#Preview {
    TabBar()
}
