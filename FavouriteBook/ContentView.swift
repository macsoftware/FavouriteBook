//
//  ContentView.swift
//  FavouriteBook
//
//  Created by Ian MacKinnon on 26/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(myFavourites){ fav in
                    Section(header: Text(fav.title)){
                        ForEach(fav.elements){ elem in
                            NavigationLink(destination: DetailsView(chosenFavElement: elem)){
                                Text(elem.name)
                            }
                        }
                    }
                    
                }
            }
        }.navigationBarTitle(Text("Favourites Book"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
