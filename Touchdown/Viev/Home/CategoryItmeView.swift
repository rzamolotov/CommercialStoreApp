//
//  CategoryItmeView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 18.07.2022.
//

import SwiftUI

struct CategoryItmeView: View {
    //MARK: - Property
    
    let category: Category
    
    //MARK: - Body
    
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
            Spacer()
            }// END:M HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 1))
        })//END: -Buttin
    }
}

//MARK: - Preview

struct CategoryItmeView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItmeView(category: categories[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
