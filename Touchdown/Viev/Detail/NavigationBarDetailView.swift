//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Роман Замолотов on 24.07.2022.
//


import SwiftUI

struct NavigationBarDetailView: View {
  // MARK: - PROPERTY
  
    
  // MARK: - BODY
  
  var body: some View {
    HStack {
      Button(action: {}, label: {
        Image(systemName: "chevron.left")
          .font(.title)
          .foregroundColor(.white)
      })
      
      Spacer()
      
      Button(action: {}, label: {
        Image(systemName: "cart")
          .font(.title)
          .foregroundColor(.white)
      })
    } //: HSTACK
  }
}

// MARK: - PREVIEW

struct NavigationBarDetailView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationBarDetailView()
      .previewLayout(.sizeThatFits)
      .padding()
      .background(Color.gray)
  }
}
