//
//  FavoriteThingsView.swift
//  FavoriteThings
//
//  Created by Harshan Dhindsa on 2024-11-28.
//

import SwiftUI

struct FavoriteThing: Identifiable {
    let id = UUID()
    let image: String
    let title: String
    let description: String
}

struct ContentView: View {
    let favoriteThings = [
        FavoriteThing(image: "basketball", title: "Basketball", description: "There’s nothing quite like the adrenaline rush of a close game. I love the game and its spirit of competition."),
        FavoriteThing(image: "books", title: "Books", description: "Books are gateways to learning more and more about the world around me. They're a way to escape the world sometimes and that is what I love."),
        FavoriteThing(image: "fastfood", title: "Fast Food", description: "Sometimes, comfort food is all you need. I love fast food because it saves me time and money."),
        FavoriteThing(image: "movies", title: "Movies", description: "Movies are magical—they let me travel to distant galaxies, experience heartwarming stories, and teach me valuable lessons."),
        FavoriteThing(image: "gaming", title: "Gaming", description: "Gaming is more than just a hobby; it's a living, breathing world of excitement and creativity. I love gaming."),
        FavoriteThing(image: "friends", title: "Friends", description: "Life is better with friends. As the saying goes, you can't beat a good friend.")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading) {

                    
                    ForEach(favoriteThings) { thing in
                        NavigationLink(destination: DetailView(favoriteThing: thing)) {
                            HStack(spacing: 16) {
                                Image(thing.image)
                                    .resizable()
                                    .frame(width: 50, height: 50)
                                    .clipShape(RoundedRectangle(cornerRadius: 8))
                                
                                VStack(alignment: .leading) {
                                    Text(thing.title)
                                        .font(.headline)
                                        .foregroundColor(.black)
                                    
                                    Text(thing.description)
                                        .font(.subheadline)
                                        .lineLimit(2)
                                        .foregroundColor(.secondary)
                                }
                                
                                Spacer()
                            }
                            .padding()
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color(.systemGray6))
                            )
                            .padding([.leading, .trailing], 16)
                        }
                    }
                }
            }
            .navigationTitle("Favourite Things")
        }
    }
}

struct DetailView: View {
    let favoriteThing: FavoriteThing
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Image(favoriteThing.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Text(favoriteThing.title)
                    .font(.largeTitle)
                    .bold()
                
                Text(favoriteThing.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(favoriteThing.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
