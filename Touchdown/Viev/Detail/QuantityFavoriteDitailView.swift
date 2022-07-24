//
//  QuantityFavoriteDitailView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 24.07.2022.
//

import SwiftUI

struct QuantityFavoriteDitailView: View {
    //MARK: - Property
    
    @State private var counter: Int = 0
    //MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            Button(action: {
                if counter > 0 {
                    counter -= 1
                }
            }, label: {
                Image(systemName: "minus.circle")
            })
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            Button(action: {
                if counter < 2 {
                    counter += 1 }
            }, label: {
                Image(systemName: "plus.circle")
            })
            
            Spacer()
            Button(action: {}, label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
                
            })
        })//END: HStack
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}


//MARK: - Preview
struct QuantityFavoriteDitailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavoriteDitailView()
            .previewLayout(.sizeThatFits)
            .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
    }
}
