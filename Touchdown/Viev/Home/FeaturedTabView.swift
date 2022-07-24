//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 17.07.2022.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
            
        } //END: Tab
        .tabViewStyle(PageTabViewStyle(indexDisplayMode:.always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
