//
//  FavModel.swift
//  FavouriteBook
//
//  Created by Ian MacKinnon on 26/01/2023.
//

import Foundation
import SwiftUI

struct FavModel : Identifiable {
    
    var id = UUID()
    var title: String
    var elements: [FavElements]
        
}


struct FavElements: Identifiable {
    var id = UUID()
    var name : String
    var imageName: String
    var description: String
}

// Bands
let beatles = FavElements(name: "The Beatles", imageName: "thebeatles", description: "Awesome Liverpool Band")
let oasis = FavElements(name: "Oasis", imageName: "oasis", description: "Awesome Manchester Band")
let foos = FavElements(name: "The Foo Fighters", imageName: "foos", description: "Awsome USA Band")

let favBands = FavModel(title: "Favourite Bands", elements: [beatles, oasis, foos])

// Movies
let matrix = FavElements(name: "The Matrix", imageName: "matrix", description: "Awesome Movie")
let gladiator = FavElements(name: "The Gladiator", imageName: "gladiator", description: "Awesome Movie With Crowe")
let harry = FavElements(name: "Harry Potter", imageName: "harry", description: "Awsome Wizarding Franchise")

let favMovies = FavModel(title: "Favourite Movies", elements: [matrix, gladiator, harry])

let myFavourites = [favBands, favMovies]
