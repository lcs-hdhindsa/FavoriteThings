//
//  FavoriteThingsView.swift
//  FavoriteThings
//
//  Created by Harshan Dhindsa on 2024-11-28.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        NavigationStack {
            List(favoriteThings) { thing in
                NavigationLink {
                    DetailView(favoriteThing: thing)
                } label: {
                    ListItemView(thingToShow: thing)
                }

            }
            .listStyle(.plain)

            .navigationTitle("Favourite Things")
        }
    }
}

#Preview {
    ListView()
}

