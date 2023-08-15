//
//  Constant.swift
//  Touchdown
//
//  Created by Adriancys Jesus Villegas Toro on 9/8/23.
//

import SwiftUI

// MARK: - Data

let players: [Player] = Bundle.main.decode("player.json")
let categories: [CategoryModel] = Bundle.main.decode("category.json")
let products: [ProductModel] = Bundle.main.decode("product.json")
let brands: [BrandModel] = Bundle.main.decode("brand.json")
let sampleProduct: ProductModel = products[0]

// MARK: - Color
let colorBackground: Color = Color("ColorBackground")
let colorGrey: Color =  Color(UIColor.systemGray4)

// MARK: - Layout
let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}


// MARK: - UX
let feedback = UIImpactFeedbackGenerator(style: .medium)
// MARK: - API

// MARK: - Image


// MARK: - Font

// MARK: - String

// MARK: - Misc
