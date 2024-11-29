//
//  ContentView.swift
//  FavoriteThings
//
//  Created by Harshan Dhindsa on 2024-11-22.
//
import SwiftUI

struct ontentView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text("My Favourite Things")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top, 20)
                    .padding(.horizontal, 16)
                
                ForEach(favoriteThings, id: \.title) { item in
                    FavouriteItem(imageName: item.imageName, title: item.title, description: item.description)
                        .padding(.horizontal, 16)
                }
            }
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
let favoriteThings = [
    (imageName: "basketball", title: "Basketball", description: "There’s nothing quite like the adrenaline rush of a close game,I love the game and for it's spirit of competition."),
    (imageName: "books", title: "Books", description: "Books are gateways to learning more and more about the world around me. They’re a way to escape the world somtimes and that is what I love."),
    (imageName: "fastfood", title: "Fast Food", description: "Sometimes, comfort food is all you need, I love fast food it saves me time and money."),
    (imageName: "movies", title: "Movies", description: "Movies are magical—they let me travel to distant galaxies, experience heartwarming stories,also teach me valuable lessons."),
    (imageName: "gaming", title: "Gaming", description: "Gaming is more than just a hobby, its a living, breathing world of excitement and creativity. I love gaming."),
    (imageName: "friends", title: "Friends", description: "Life is better with friends,as the saying goes, you can’t beat a good friend.")
]
