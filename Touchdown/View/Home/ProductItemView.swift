//
//  ProductItemView.swift
//  Touchdown
//
//  Created by Adriancys Jesus Villegas Toro on 13/8/23.
//

import SwiftUI

struct ProductItemView: View {
    // MARK: - Properties
    let product: ProductModel
    
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            
            //Photo
            ZStack {
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding(10)
            }//:ZStack
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .cornerRadius(12)
            
            //Name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //Price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
            
        })//:VStack
    }
}

// MARK: - Preview

struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
