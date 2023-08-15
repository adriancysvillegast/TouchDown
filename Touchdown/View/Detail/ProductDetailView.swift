//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Adriancys Jesus Villegas Toro on 14/8/23.
//

import SwiftUI

struct ProductDetailView: View {
    // MARK: - Properties
    @EnvironmentObject var shop: Shop
    // MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            //navBar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            //Header
            HeaderDetailView()
                .padding(.horizontal)
            
            //Detail top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            //Detail botton
            
            VStack(alignment: .center, spacing: 0) {
                //Rating sizes
                RatingSizesDetailView()
                    .padding(.top, -20)
                    .padding(.bottom, 10)
                
                //Description
                ScrollView(.vertical, showsIndicators: false) {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(Color.gray)
                        .multilineTextAlignment(.leading)
                }
                
                //Quantity + favorite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                //Add to cart
                AddToCartDetailView()
                    .padding(.bottom, 20)
                
            }//:VStack
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())//iNeedToReviewThisTopic
                    .padding(.top, -105)
            )
 
        }//: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue
            ).ignoresSafeArea(.all, edges: .all)
        )
    }
}

// MARK: - Preview

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .environmentObject(Shop())
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
