//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Adriancys Jesus Villegas Toro on 13/8/23.
//

import SwiftUI

struct BrandGridView: View {
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing) {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                    
                }
            }//:Grid
            .frame(height: 200)
            .padding(15)
        }//: Scroll
    }
}

// MARK: - Preview

struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
