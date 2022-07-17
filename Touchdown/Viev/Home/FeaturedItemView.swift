//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 17.07.2022.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - Property
    
    let player: Player
    // MARK: - Body
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARRK: - Preview

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0
        ])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
