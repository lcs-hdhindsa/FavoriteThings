//
//  ContentView.swift
//  FavoriteThings
//
//  Created by Harshan Dhindsa on 2024-11-22.
//
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("My Favourite Things")
                .font(.largeTitle)
                .bold()
                .padding(.top, 20)
                .padding(.horizontal, 16)
            
            List {
                FavouriteItem(imageName: "basketball", title: "Basketball", description: "There’s nothing quite like the adrenaline rush of a close game, the sound of sneakers squeaking on the court, and the perfect swish of a shot hitting nothing but net. Basketball keeps me energized and inspired.")
                FavouriteItem(imageName: "books", title: "Books", description: "Books are gateways to infinite worlds, where imagination knows no bounds. From thrilling adventures to thought-provoking classics, I’ve always loved losing myself in their pages.")
                FavouriteItem(imageName: "fastfood", title: "Fast Food", description: "Sometimes, comfort food is all you need—hot, crispy fries, a juicy burger dripping with flavor, or a cheesy slice of pizza. It’s my go-to indulgence when I need a pick-me-up.")
                FavouriteItem(imageName: "movies", title: "Movies", description: "Movies are magical—they let me travel to distant galaxies, experience heartwarming stories, and live through gripping suspense all from the comfort of my couch.")
                FavouriteItem(imageName: "gaming", title: "Gaming", description: "Gaming is more than just a hobby; it’s an adventure. Whether it’s solving intricate puzzles, embarking on epic quests, or competing with friends, it’s the perfect escape into another world.")
                FavouriteItem(imageName: "friends", title: "Friends", description: "Life is better with friends—their laughter, endless support, and unforgettable memories make every moment worth cherishing. My friends are my chosen family.")
            }
            .listStyle(PlainListStyle())
        }
    }
}

struct FavouriteItem: View {
    var imageName: String
    var title: String
    var description: String
    
    var body: some View {
        HStack(alignment: .top, spacing: 16) {
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.headline)
                Text(description)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
        .padding(.vertical, 8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

