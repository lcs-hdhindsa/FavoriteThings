//
//  DetaillView.swift
//  FavoriteThings
//
//  Created by Harshan Dhindsa on 2024-11-29.
//

import SwiftUI

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
                
                Text(favoriteThing.description)
                    .font(.body)
                    .foregroundColor(.secondary)
                
                Spacer()
            }
            .padding()
        }
        .navigationTitle(favoriteThing.title)
    }
}

#Preview {
    NavigationStack {
        DetailView(favoriteThing: books)
    }
}
