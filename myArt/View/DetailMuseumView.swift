//
//  DetailMuseumView.swift
//  myArt
//
//  Created by Apprenant 163 on 21/10/2024.
//

import SwiftUI

struct DetailMuseumView: View {
   // var nameValue = ""
    var museum:Museum
    
    var body: some View {
        
        VStack
        {
            Image(museum.imageMusee)
                .resizable()
                .frame(width:300,height: 200)
            Text(museum.nomMusee)
            Text(museum.descriptionMusee)
            Text(museum.countryMusee)
            
        }
        .padding()
    }
}


