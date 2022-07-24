//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 24.07.2022.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - Property
    
    //MARK: - Body
    var body: some View {
        Button(action: {}, label: {
            Spacer()
            Text("Add To Cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        })//END: Button
        .padding(15)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.green))
        .clipShape(Capsule())
    }
}

//MARK: - Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
