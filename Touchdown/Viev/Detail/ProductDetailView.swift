//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 21.07.2022.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - Property
    
    //MARK: - Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //Navigation Bar
            NavigationBarDetailView()
                .padding()
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            
            //Detail Top Part
            TopPartDetailView()
                .padding(.horizontal)
            
            
            //Detail Bottom Part
            //Raitings + Sizes
            //Discription
            //Quantity + Favorite
            //Add To Cart
            Spacer()
            
        })//END: VStack
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)).ignoresSafeArea(.all, edges: .all)
    }
}

//MARK: - Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
