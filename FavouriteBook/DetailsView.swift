//
//  DetailsView.swift
//  FavouriteBook
//
//  Created by Ian MacKinnon on 26/01/2023.
//

import SwiftUI

struct DetailsView: View {
    
    var chosenFavElement: FavElements
    
    
    var body: some View {
        VStack{
            Image(chosenFavElement.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(chosenFavElement.name)
                .font(.largeTitle)
                .padding()
            Text(chosenFavElement.description)
                
        }
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(chosenFavElement: matrix)
    }
}
