//
//  NavigationBarrView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 17.07.2022.
//

import SwiftUI

struct NavigationBarrView: View {
    //MARK: - Properties
    
    @State private var isAnimated: Bool = false
    
    //MARK: - Body
    
    var body: some View {
        HStack{
            Button(action: {}, label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundColor(.black)
            })//END: - Search Button
            
            Spacer()
            
            LogoView() //MARK: - Logo+logo animation
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                }) //END: - Logo+logo animation
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack{
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.black)
                
                Circle()
                    .fill(Color.red)
                    .frame(width: 14, height: 14, alignment: .center)
                    .offset(x: 13, y: -10)
                }
            })//END: - Buy Button
        } //END: - HStack
    }
}
// MARK: - Preview

struct NavigationBarrView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarrView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
