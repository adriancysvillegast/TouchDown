//
//  SectionView.swift
//  Touchdown
//
//  Created by Adriancys Jesus Villegas Toro on 11/8/23.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Proeprties
    @State var rotateClockwise: Bool
    
    // MARK: - Body
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(Font.system(size: 13))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
                
        }//:VSTACK
        .background(colorGrey.cornerRadius(12))
        .frame(width: 85)
    }
}

// MARK: - Preview

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
