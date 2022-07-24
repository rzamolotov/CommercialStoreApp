//
//  CustomeShape.swift
//  Touchdown
//
//  Created by Роман Замолотов on 24.07.2022.
//

import SwiftUI

struct CustomeShape: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 50, height: 50))
        
        return Path(path.cgPath)
    }
}

struct CustomeShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomeShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
