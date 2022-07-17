//
//  SectionView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 18.07.2022.
//

import SwiftUI

struct SectionView: View {
    //MARK: - Property
    
    @State var rotateClockwise: Bool
    
    //MARK: - Body
    var body: some View {
        VStack {
            
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90: -90))
            
            Spacer()
        }//END: - VStack
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

//MARK: - Preview
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
