//
// DiscoverGalleryView
//  artUnbound
//
//  Created by Apprenant 163 on 18/10/2024.
//

import SwiftUI

struct  DiscoverMuseumView: View {
    @StateObject var viewModel = MuseumViewModel()
    
  
    
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    
    var body: some View {
        
        
        VStack
        {
            
            NavigationStack
            {
                
                ScrollView
                {
                    
                    LazyVGrid(columns: columns, spacing: 30)
                    {
                        ForEach(viewModel.museums){ museum in
                            NavigationLink(destination:DetailMuseumView(museum: museum),label:
                                            {
                                
                                VStack
                                {
                                    Image(museum.imageMusee)
                                        .resizable()
                                        .frame(width: 150, height: 100)
                                    
                                    
                                    Text(museum.nomMusee)
                                        .foregroundStyle(.black)
                                }
                               
                            })
                            
                            
                        }
                        
                    }
                   
                    .padding(.horizontal)
                    
                    
                }
                .navigationTitle("Discovers Museums")
                .onAppear{viewModel.fetchMuseums()}
                .padding()
                
            }
            
            
            
        }
    }
}

#Preview {
    DiscoverMuseumView()
}
