//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 18.07.2022.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - Property
    
    //MARK: - Boddy
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: columnSpacing, pinnedViews: [], content: {
                Section(header: SectionView(rotateClockwise: false), footer: SectionView(rotateClockwise: true)) {
                    ForEach(categories) { category in
                        CategoryItmeView(category: category)
                    }
                }
            })// END: - Grid
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        })// END: -Scroll
    }
}

//MARK: - Preview

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
