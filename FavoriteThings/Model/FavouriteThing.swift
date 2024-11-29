//
//  FavouriteThing.swift
//  FavoriteThings
//
//  Created by Harshan Dhindsa on 2024-11-29.
//


import Foundation

// Defiention of a Favourite
struct FavoriteThing: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let description: String
}


// Define Several Instances Of a Favourite thing
let basketball = FavoriteThing(image: "basketball", title: "Basketball", description: "There’s nothing quite like the adrenaline rush of a close game. I love the game and its spirit of competition.")
let books = FavoriteThing(image: "books", title: "Books", description: "Books are gateways to learning more and more about the world around me. They're a way to escape the world sometimes and that is what I love.")
let fastFood = FavoriteThing(image: "fastfood", title: "Fast Food", description: "Sometimes, comfort food is all you need. I love fast food because it saves me time and money.")
let movies = FavoriteThing(image: "movies", title: "Movies", description: "Movies are magical—they let me travel to distant galaxies, experience heartwarming stories, and teach me valuable lessons.")
let gaming = FavoriteThing(image: "gaming", title: "Gaming", description: "Gaming is more than just a hobby; it's a living, breathing world of excitement and creativity. I love gaming.")
let friends = FavoriteThing(image: "friends", title: "Friends", description: "Life is better with friends. As the saying goes, you can't beat a good friend.")


// Placed the instances in an array
let favoriteThings = [
    basketball,
    books,
    fastFood,
    movies,
    gaming,
    friends
]

