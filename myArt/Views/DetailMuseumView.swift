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
        
        
        Text(museum.nomMusee)
            .fontWeight(.bold)
            .font(.system(size: 44))
        VStack
        {
                
            Image(museum.imageMusee)
                .resizable()
                .frame(width:300,height: 200)
                .padding(30)
            VStack(alignment: .leading)
            {
                VStack(alignment: .leading)
                {
                    Text("Description:")
                        .fontWeight(.bold)
                    Text(museum.descriptionMusee)
                        
                }
                HStack
                {
                    Text("Pays:")
                        .fontWeight(.bold)
                    Text(museum.countryMusee)
                }
                
                HStack
                {
                    Text("Ville:")
                        .fontWeight(.bold)
                    Text(museum.cityMusee)
                }
                HStack
                {
                    Text("Adresse:")
                        .fontWeight(.bold)
                    Text("\(museum.adresseMusee),\(museum.postalCodeMusee)")
                }
            }
            
        }.padding()
    }
    
}





