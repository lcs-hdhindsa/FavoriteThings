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
            .listStyle(.plain)

            .navigationTitle("Favourite Things")
        }
    }
}

#Preview {
    ListView()
}
