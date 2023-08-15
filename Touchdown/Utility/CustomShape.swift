//
//  CustomShape.swift
//  Touchdown
//
//  Created by Adriancys Jesus Villegas Toro on 14/8/23.
//

import SwiftUI

struct CustomShape: Shape {
    // MARK: - Properties
    
    // MARK: - Methods
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(
            roundedRect: rect,
            byRoundingCorners: [.topLeft, .topRight],
            cornerRadii: CGSize(width: 45, height: 45)
        )
        return Path(path.cgPath)
    }
}

// MARK: - Preview

struct CustomShape_Previews: PreviewProvider {
    static var previews: some View {
        CustomShape()
            .previewLayout(.fixed(width: 428, height: 120))
            .padding()
    }
}
