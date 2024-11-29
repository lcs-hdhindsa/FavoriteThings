//
//  ListItemView.swift
//  FavoriteThings
//
//  Created by Harshan Dhindsa on 2024-11-29.
//

import SwiftUI

struct ListItemView: View {
    
    let thingToShow: FavoriteThing
    
    var body: some View {
        HStack(spacing: 16) {
            Image(thingToShow.image)
                .resizable()
                .frame(width: 50, height: 50)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            
            VStack(alignment: .leading) {
                Text(thingToShow.title)
                    .font(.headline)
                    .foregroundColor(.black)
                
                Text(thingToShow.description)
                    .font(.subheadline)
                    .lineLimit(2)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(.pink))
        )
        .padding([.leading, .trailing], 16)
    }
}

#Preview {
    ListItemView(thingToShow: basketball)
}
